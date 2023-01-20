﻿<?xml version='1.0' encoding='UTF-8'?>
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
			<Item Name="Identical Comparator.lvclass" Type="LVClass" URL="../Comparators/Identical Comparator/Identical Comparator.lvclass"/>
			<Item Name="Identical Inputs Comparator.lvclass" Type="LVClass" URL="../Comparators/Indentical Inputs Comparator/Identical Inputs Comparator.lvclass"/>
			<Item Name="Tolerant Numeric Comparator.lvclass" Type="LVClass" URL="../Comparators/Tolerant Numeric Comparator/Tolerant Numeric Comparator.lvclass"/>
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
		<Item Name="Test Doubles" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Test Interface.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Test Interface/Test Interface.lvclass"/>
			<Item Name="Test Interface Mock.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Test Interface Mock/Test Interface Mock.lvclass"/>
			<Item Name="Mock VI Call.lvclass" Type="LVClass" URL="../../tests/Test Doubles/Mock VI Call/Mock VI Call.lvclass"/>
		</Item>
		<Item Name="Tests" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Tolerant Numeric Comparator Test.lvclass" Type="LVClass" URL="../../tests/Tolerant Numeric Comparator Test/Tolerant Numeric Comparator Test.lvclass"/>
			<Item Name="Expectation Test.lvclass" Type="LVClass" URL="../../tests/Expectation Test/Expectation Test.lvclass"/>
			<Item Name="One Expectation Test.lvclass" Type="LVClass" URL="../../tests/One Expectation Test/One Expectation Test.lvclass"/>
			<Item Name="One or More Expectation Test.lvclass" Type="LVClass" URL="../../tests/One or More Expectation Test/One or More Expectation Test.lvclass"/>
			<Item Name="Argument Comparison Test.lvclass" Type="LVClass" URL="../../tests/Argument Comparison Test/Argument Comparison Test.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
