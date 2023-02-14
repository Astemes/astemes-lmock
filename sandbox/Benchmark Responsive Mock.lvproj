<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Pure Mock Test" Type="Folder"/>
		<Item Name="Responsive Mock Test" Type="Folder">
			<Item Name="LMock Test Case 1.lvclass" Type="LVClass" URL="../Benchmark/LMock Test Case/LMock Test Case 1.lvclass"/>
			<Item Name="LMock Test Case 2.lvclass" Type="LVClass" URL="../Benchmark/LMock Test Case 2/LMock Test Case 2.lvclass"/>
			<Item Name="LMock Test Case 3.lvclass" Type="LVClass" URL="../Benchmark/LMock Test Case 3/LMock Test Case 3.lvclass"/>
			<Item Name="LMock Test Case 4.lvclass" Type="LVClass" URL="../Benchmark/LMock Test Case 4/LMock Test Case 4.lvclass"/>
			<Item Name="LMock Test Case 5.lvclass" Type="LVClass" URL="../Benchmark/LMock Test Case 5/LMock Test Case 5.lvclass"/>
		</Item>
		<Item Name="Responsive Mock.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Responsive Mock.lvclass"/>
		<Item Name="Test Interface Responsive Mock.lvclass" Type="LVClass" URL="../Benchmark/Test Interface Mock/Test Interface Responsive Mock.lvclass"/>
		<Item Name="Test Interface.lvclass" Type="LVClass" URL="../Benchmark/Test Interface/Test Interface.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Identical Arguments Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Identical Arguments Comparator.lvclass"/>
				<Item Name="Identical Inputs Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Identical Inputs Comparator.lvclass"/>
				<Item Name="Ignore Inputs Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Ignore Inputs Comparator.lvclass"/>
				<Item Name="LMock Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Comparator.lvclass"/>
				<Item Name="LMock Expectation.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Expectation.lvclass"/>
				<Item Name="LMock Verifier.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Verifier.lvclass"/>
				<Item Name="LMock VI Call.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock VI Call.lvclass"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="Mock.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Mock.lvclass"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="One.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/One.lvclass"/>
				<Item Name="Parametric VI Call.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Parametric VI Call.lvclass"/>
				<Item Name="Pure Mock.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Pure Mock.lvclass"/>
				<Item Name="String Argument Matching Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/String Argument Matching Comparator.lvclass"/>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
				<Item Name="Tolerant Numeric Argument Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Tolerant Numeric Argument Comparator.lvclass"/>
				<Item Name="VI Call.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/VI Call.lvclass"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
