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
		<Item Name="Tests" Type="Folder">
			<Item Name="Test Doubles" Type="Folder">
				<Item Name="Mock Serial.lvclass" Type="LVClass" URL="../Mock Serial/Mock Serial.lvclass"/>
				<Item Name="Mock Log.lvclass" Type="LVClass" URL="../Log Mock/Mock Log.lvclass"/>
			</Item>
			<Item Name="Driver Test.lvclass" Type="LVClass" URL="../Driver Test Case/Driver Test.lvclass"/>
			<Item Name="Serial Logging Decorator Test.lvclass" Type="LVClass" URL="../Logging Decorator Test/Serial Logging Decorator Test.lvclass"/>
		</Item>
		<Item Name="Abstractions" Type="Folder">
			<Item Name="Serial.lvclass" Type="LVClass" URL="../Serial/Serial.lvclass/Serial.lvclass"/>
			<Item Name="Log.lvclass" Type="LVClass" URL="../Log/Log.lvclass"/>
		</Item>
		<Item Name="Concrete Classes" Type="Folder">
			<Item Name="String Indicator Logger.lvclass" Type="LVClass" URL="../String Indicator Logger/String Indicator Logger.lvclass"/>
			<Item Name="Simulated Serial.lvclass" Type="LVClass" URL="../Simulated Serial/Simulated Serial.lvclass"/>
		</Item>
		<Item Name="Driver.lvclass" Type="LVClass" URL="../Driver/Driver.lvclass"/>
		<Item Name="Serial Logging Decorator.lvclass" Type="LVClass" URL="../Serial Logging Decorator/Serial Logging Decorator.lvclass"/>
		<Item Name="Demo.vi" Type="VI" URL="../Demo.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="LMock Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Comparator.lvclass"/>
				<Item Name="LMock Expectation.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Expectation.lvclass"/>
				<Item Name="LMock VI Call.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock VI Call.lvclass"/>
				<Item Name="LUnit Runnable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/LUnit Runnable.lvclass"/>
				<Item Name="Mock.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/Mock.lvclass"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Test Case.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LUnit/Test Case.lvclass"/>
				<Item Name="Delimited String to 1D String Array.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Delimited String to 1D String Array.vi"/>
				<Item Name="LMock Parametric VI Call.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Parametric VI Call.lvclass"/>
				<Item Name="LMock One.lvlib" Type="Library" URL="/&lt;vilib&gt;/Astemes/LMock/LMock One.lvlib"/>
				<Item Name="LMock Any Inputs Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Any Inputs Comparator.lvclass"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="LMock Tolerant Numeric Input Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Tolerant Numeric Input Comparator.lvclass"/>
				<Item Name="LMock Matching String Input Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Matching String Input Comparator.lvclass"/>
				<Item Name="LMock Identical Inputs Comparator.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Astemes/LMock/LMock Identical Inputs Comparator.lvclass"/>
				<Item Name="LMock.lvlib" Type="Library" URL="/&lt;vilib&gt;/Astemes/LMock/LMock.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
