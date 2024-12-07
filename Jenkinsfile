pipeline {
	agent {
        label 'LV2020'
    }
	environment{
		PROJECT_TITLE = "Astemes LMock"
		REPO_URL = "https://github.com/astemes/astemes-lmock"
		AUTHOR = "Anton Sundqvist"
		INITIAL_RELEASE = 2023
		LV_TEST_SUITE_PATH = "source\\Test Suite.lvproj"
		LV_PROJECT_PATH = "source\\LMock.lvproj"
		LV_BUILD_SPEC = "LMock"
		LV_VIPB_PATH = "source\\LMock.vipb"
		LV_VERSION = "20.0"
	}
	stages {
		stage('Initialize') {
			steps {
				library 'astemes-build-support'
				script{COMMIT_TAG = gitTag()}
				initWorkspace()
				dir("build_support"){
					pullBuildSupport()
					initPythonVenv "requirements.txt"
				}
				pullSubmodules()
			}
		}
		stage('Test') {
			steps {
				runLUnit "${LV_TEST_SUITE_PATH}"
				// Empty results set to true for the template to pass build
				junit testResults: "reports\\*.xml", allowEmptyResults: true
			}
		}
		stage('Build') {
			steps {
				//Execute LabVIEW build spec
				buildLVBuildSpec "${LV_PROJECT_PATH}", "${LV_BUILD_SPEC}"
				//Build mkdocs documentation
				buildDocs "${PROJECT_TITLE}", "${REPO_URL}", "${AUTHOR}", "${INITIAL_RELEASE}"
			}
		}
		stage('Deploy') {
			when{
				expression{
					!COMMIT_TAG.isEmpty()
				}
			}
			environment{
				GITHUB_TOKEN = credentials('github-token')
			}
			steps{
				script{VIP_FILE_PATH = buildVIPackage "${LV_VIPB_PATH}", "${LV_VERSION}", "${COMMIT_TAG}"}
				deployGithubPages()
				deployGithubRelease "${REPO_URL}", "${COMMIT_TAG}", "${VIP_FILE_PATH}"
			}
		}
	}	
	post{
		regression{
			sendMail "anton.sundqvist@astemes.com"
		}
	}
	options {
		buildDiscarder(logRotator(daysToKeepStr: '3', numToKeepStr: '5'))
	}
}