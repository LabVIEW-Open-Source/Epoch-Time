<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
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
		<Item Name="source" Type="Folder">
			<Item Name="Epoch Classes" Type="Folder">
				<Item Name="GPS" Type="Folder">
					<Item Name="Epoch.GPS.lvclass" Type="LVClass" URL="../source/epoch.GPS/Epoch.GPS.lvclass"/>
					<Item Name="Timestamp to GPS Time.vi" Type="VI" URL="../source/epoch.GPS/Timestamp to GPS Time.vi"/>
					<Item Name="GPS Time to Timestamp.vi" Type="VI" URL="../source/epoch.GPS/GPS Time to Timestamp.vi"/>
				</Item>
				<Item Name="Unix" Type="Folder">
					<Item Name="Epoch.UNIX.lvclass" Type="LVClass" URL="../source/epoch.UNIX/Epoch.UNIX.lvclass"/>
					<Item Name="Timestamp to Unix Time.vi" Type="VI" URL="../source/epoch.UNIX/Timestamp to Unix Time.vi"/>
					<Item Name="Unix Time to Timestamp.vi" Type="VI" URL="../source/epoch.UNIX/Unix Time to Timestamp.vi"/>
				</Item>
				<Item Name="Epoch.lvclass" Type="LVClass" URL="../source/epoch/Epoch.lvclass"/>
				<Item Name="Epoch.UTC.lvclass" Type="LVClass" URL="../source/epoch.UTC/Epoch.UTC.lvclass"/>
				<Item Name="DateTimeFormatter.lvclass" Type="LVClass" URL="../source/formatter/DateTimeFormatter.lvclass"/>
			</Item>
			<Item Name="ISO Formatting" Type="Folder">
				<Item Name="DateTime.ISO8601.lvclass" Type="LVClass" URL="../source/formatter.iso8601/DateTime.ISO8601.lvclass"/>
				<Item Name="ISO Day -- enum.ctl" Type="VI" URL="../source/formatter.iso8601/ISO Day -- enum.ctl"/>
				<Item Name="ISO8601 Date Formats.ctl" Type="VI" URL="../source/formatter.iso8601/ISO8601 Date Formats.ctl"/>
				<Item Name="Timestamp to ISO8601 UTC DateTime.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 UTC DateTime.vi"/>
				<Item Name="Timestamp to ISO8601 String.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 String.vi"/>
				<Item Name="Timestamp to ISO8601 Time.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 Time.vi"/>
				<Item Name="Timestamp to ISO8601 Date.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 Date.vi"/>
				<Item Name="Timestamp to ISO8601 Year.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 Year.vi"/>
				<Item Name="Timestamp to ISO8601 Week.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 Week.vi"/>
				<Item Name="Timestamp to ISO8601 Day.vi" Type="VI" URL="../source/formatter.iso8601/Timestamp to ISO8601 Day.vi"/>
				<Item Name="ISO8601 String to Timestamp.vi" Type="VI" URL="../source/formatter.iso8601/ISO8601 String to Timestamp.vi"/>
				<Item Name="ISO8601 DateString to Timestamp.vi" Type="VI" URL="../source/formatter.iso8601/ISO8601 DateString to Timestamp.vi"/>
				<Item Name="ISO8601 TimeString to Timestamp.vi" Type="VI" URL="../source/formatter.iso8601/ISO8601 TimeString to Timestamp.vi"/>
			</Item>
			<Item Name="RFC5322 (Email) Formatting" Type="Folder">
				<Item Name="DateTime.RFC5322.lvclass" Type="LVClass" URL="../source/formatter.rfc5322/DateTime.RFC5322.lvclass"/>
				<Item Name="Timestamp to RFC5322 DateString.vi" Type="VI" URL="../source/formatter.rfc5322/Timestamp to RFC5322 DateString.vi"/>
				<Item Name="RFC5322 DateString to Timestamp.vi" Type="VI" URL="../source/formatter.rfc5322/RFC5322 DateString to Timestamp.vi"/>
				<Item Name="RFC5322 Months -- enum.ctl" Type="VI" URL="../source/formatter.rfc5322/RFC5322 Months -- enum.ctl"/>
				<Item Name="RFC5322 Month String to Integer.vi" Type="VI" URL="../source/formatter.rfc5322/RFC5322 Month String to Integer.vi"/>
			</Item>
			<Item Name="Gregorian Calendar" Type="Folder">
				<Item Name="GregorianCal_Month -- enum.ctl" Type="VI" URL="../source/GregorianCal_Month -- enum.ctl"/>
				<Item Name="GregorianCal_MonthLengths.vi" Type="VI" URL="../source/GregorianCal_MonthLengths.vi"/>
				<Item Name="GregorianCal_MonthLength.vi" Type="VI" URL="../source/GregorianCal_MonthLength.vi"/>
			</Item>
			<Item Name="Increment" Type="Folder">
				<Item Name="Increment Timestamp.vi" Type="VI" URL="../source/Increment Timestamp.vi"/>
			</Item>
			<Item Name="Epochs -- enum.ctl" Type="VI" URL="../source/Epochs -- enum.ctl"/>
			<Item Name="UTC Offsets -- enum.ctl" Type="VI" URL="../source/UTC Offsets -- enum.ctl"/>
			<Item Name="Timestamp Compare Units -- enum.ctl" Type="VI" URL="../source/Timestamp Compare Units -- enum.ctl"/>
			<Item Name="Time Increment Units -- enum.ctl" Type="VI" URL="../source/Time Increment Units -- enum.ctl"/>
			<Item Name="Epoch Factory.vi" Type="VI" URL="../source/Epoch Factory.vi"/>
			<Item Name="Get Epoch Time.vi" Type="VI" URL="../source/Get Epoch Time.vi"/>
			<Item Name="EpochNotTimestamp.vi" Type="VI" URL="../source/EpochNotTimestamp.vi"/>
			<Item Name="Epoch.DecomposeFractional.vi" Type="VI" URL="../source/Epoch.DecomposeFractional.vi"/>
			<Item Name="isLeapYear (Poly).vi" Type="VI" URL="../source/isLeapYear (Poly).vi"/>
			<Item Name="isLeapYear (integer).vi" Type="VI" URL="../source/isLeapYear (integer).vi"/>
			<Item Name="isLeapYear (timestamp).vi" Type="VI" URL="../source/isLeapYear (timestamp).vi"/>
			<Item Name="isDST.vi" Type="VI" URL="../source/isDST.vi"/>
			<Item Name="Get Local UTC Offset.vi" Type="VI" URL="../source/Get Local UTC Offset.vi"/>
			<Item Name="UTC Offset to Seconds.vi" Type="VI" URL="../source/UTC Offset to Seconds.vi"/>
			<Item Name="Compare Timestamps.vi" Type="VI" URL="../source/Compare Timestamps.vi"/>
			<Item Name="Compare ISO8601 DateTimes.vi" Type="VI" URL="../source/Compare ISO8601 DateTimes.vi"/>
		</Item>
		<Item Name="Epoch Library -- VI Tree.vi" Type="VI" URL="../source/Epoch Library -- VI Tree.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
