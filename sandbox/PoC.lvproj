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
		<Item Name="Expectation.lvclass" Type="LVClass" URL="../Expectation/Expectation.lvclass"/>
		<Item Name="Mock Test.lvclass" Type="LVClass" URL="../Mock Test/Mock Test.lvclass"/>
		<Item Name="Mock.lvclass" Type="LVClass" URL="../Mock/Mock.lvclass"/>
		<Item Name="One Of.lvclass" Type="LVClass" URL="../One Of/One Of.lvclass"/>
		<Item Name="Test Interface Mock.lvclass" Type="LVClass" URL="../Test Interface Mock/Test Interface Mock.lvclass"/>
		<Item Name="Test Interface.lvclass" Type="LVClass" URL="../Test Interface/Test Interface.lvclass"/>
		<Item Name="Verifier.lvclass" Type="LVClass" URL="../Validator/Verifier.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Add test result.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/Add test result.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="LUnit Aggregate Assertion Results.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Aggregate Assertion Results.vi"/>
				<Item Name="LUnit Concatenate result strings.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Concatenate result strings.vi"/>
				<Item Name="LUnit Merge Status.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/Method Result/LUnit Merge Status.vi"/>
				<Item Name="LUnit Record Assertion Result.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Record Assertion Result.vi"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Set Assertion Type.vi" Type="VI" URL="/&lt;vilib&gt;/Astemes/LUnit/Set Assertion Type.vi"/>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
