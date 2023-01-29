<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Comparators" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Identical Inputs Comparator.lvclass" Type="LVClass" URL="../Comparators/Identical Comparator/Identical Inputs Comparator.lvclass"/>
			<Item Name="Identical Arguments Comparator.lvclass" Type="LVClass" URL="../Comparators/Indentical Inputs Comparator/Identical Arguments Comparator.lvclass"/>
			<Item Name="Tolerant Numeric Argument Comparator.lvclass" Type="LVClass" URL="../Comparators/Tolerant Numeric Comparator/Tolerant Numeric Argument Comparator.lvclass"/>
			<Item Name="String Argument Matching Comparator.lvclass" Type="LVClass" URL="../Comparators/String Argument Matching Comparator/String Argument Matching Comparator.lvclass"/>
			<Item Name="Ignore Inputs Comparator.lvclass" Type="LVClass" URL="../Comparators/Ignore Inputs Comparator/Ignore Inputs Comparator.lvclass"/>
			<Item Name="Error Input Comparator.lvclass" Type="LVClass" URL="../Comparators/Error Input Comparator/Error Input Comparator.lvclass"/>
		</Item>
		<Item Name="Expectations" Type="Folder">
			<Item Name="One or More.lvclass" Type="LVClass" URL="../Expectations/One or More/One or More.lvclass"/>
			<Item Name="One.lvclass" Type="LVClass" URL="../Expectations/One/One.lvclass"/>
		</Item>
		<Item Name="Framework" Type="Folder">
			<Item Name="Comparator.lvclass" Type="LVClass" URL="../Framework/Comparator/Comparator.lvclass"/>
			<Item Name="Expectation.lvclass" Type="LVClass" URL="../Framework/Expectation/Expectation.lvclass"/>
			<Item Name="Mock.lvclass" Type="LVClass" URL="../Framework/Mock/Mock.lvclass"/>
			<Item Name="Verifier.lvclass" Type="LVClass" URL="../Framework/Verifier/Verifier.lvclass"/>
			<Item Name="VI Call.lvclass" Type="LVClass" URL="../Framework/VI Call/VI Call.lvclass"/>
		</Item>
		<Item Name="Scripting" Type="Folder">
			<Item Name="Interface Identifier.lvclass" Type="LVClass" URL="../Scripting/Interface Identifier/Interface Identifier.lvclass"/>
			<Item Name="Mock Class Generator.lvclass" Type="LVClass" URL="../Mock Class Generator/Mock Class Generator.lvclass"/>
		</Item>
		<Item Name="Test Doubles" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Test Interface.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Test Interface/Test Interface.lvclass"/>
			<Item Name="Test Interface Mock.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Test Interface Mock/Test Interface Mock.lvclass"/>
			<Item Name="Mock VI Call.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Mock VI Call/Mock VI Call.lvclass"/>
		</Item>
		<Item Name="Tests" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Interface Identifier Test.lvclass" Type="LVClass" URL="../../tests/Interface Identifier Test/Interface Identifier Test.lvclass"/>
			<Item Name="Tolerant Numeric Comparator Test.lvclass" Type="LVClass" URL="../../tests/Tolerant Numeric Comparator Test/Tolerant Numeric Comparator Test.lvclass"/>
			<Item Name="Expectation Test.lvclass" Type="LVClass" URL="../../tests/Expectation Test/Expectation Test.lvclass"/>
			<Item Name="One Expectation Test.lvclass" Type="LVClass" URL="../../tests/One Expectation Test/One Expectation Test.lvclass"/>
			<Item Name="One or More Expectation Test.lvclass" Type="LVClass" URL="../../tests/One or More Expectation Test/One or More Expectation Test.lvclass"/>
			<Item Name="Argument Comparison Test.lvclass" Type="LVClass" URL="../../tests/Argument Comparison Test/Argument Comparison Test.lvclass"/>
		</Item>
		<Item Name="Mock Class Generator Test Doubles.lvlib" Type="Library" URL="../../tests/Mock Class Generator Test/Mock Class Generator Test Doubles.lvlib"/>
		<Item Name="Mock Class Generator Test.lvclass" Type="LVClass" URL="../../tests/Mock Class Generator Test/Mock Class Generator Test.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
				<Item Name="TRef Traverse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse.vi"/>
				<Item Name="TRef TravTarget.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef TravTarget.ctl"/>
				<Item Name="VI Scripting - Traverse.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/traverseref.llb/VI Scripting - Traverse.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="LMock" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D59346A8-9078-41E7-A2F9-EFF2224309B3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LMock</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">/C/ProgramData/National Instruments/InstCache/20.0</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">/C/Users/AntonSundqvist/Documents/LabVIEW Data/2020(32-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{24240D9D-E8FC-41C3-B0F5-B025DF78EFCF}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/data</Property>
				<Property Name="Destination[2].destName" Type="Str">vi.lib</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/vi.lib/astemes/lmock</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{563B6E9B-71CE-4FC1-BFB9-5882A1A1D675}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Comparators</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Expectations</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Framework</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
			</Item>
		</Item>
	</Item>
</Project>
