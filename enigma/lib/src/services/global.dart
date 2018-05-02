import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'doc.dart';
import 'doc.dart';
import 'doc.dart';
import 'doc.dart';
import 'doc.dart';

class Global extends BaseService {
  Global(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Global';
  Future<void> abortRequest(int requestId) async {
    var __params = <String, dynamic>{};
    __params['qRequestId'] = requestId;
    var rawResult = await query('AbortRequest', __params);
  }

  /// Sets an abort flag on all pending and ongoing requests in the current engine session.
  /// * If an abort flag is set on a pending request, the request is aborted.
  /// * If an abort flag is set on an ongoing request, the engine checks to see if it is possible to abort the request.
  Future<void> abortAll() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('AbortAll', __params);
  }

  /// Gives information about the progress of the _DoReload_ and _DoSave_ calls.
  /// <div class=note>For more information on DoReload and DoSave, see the _DoReload Method_ and _DoSave Method_. </div>
  Future<ProgressData> getProgress(int requestId) async {
    var __params = <String, dynamic>{};
    __params['qRequestId'] = requestId;
    var rawResult = await query('GetProgress', __params);
    var jsonData = rawResult['result']['qProgressData'];
    var dartData =
        fromJsonFullType<ProgressData>(const FullType(ProgressData), jsonData);
    return dartData;
  }

  /// Returns the Qlik Sense version number.
  Future<String> qvVersion() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('QvVersion', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the version number of the operating system.
  Future<String> oSVersion() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('OSVersion', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the name of the operating system.
  Future<String> oSName() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('OSName', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the Qlik product name.
  Future<String> qTProduct() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('QTProduct', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the list of apps.
  ///
  /// **In Qlik Sense Enterprise:**
  ///
  /// The list is generated by the QRS. The GetDocList method only returns documents the current user is allowed to access.
  ///
  /// **In Qlik Sense Desktop:**
  ///
  /// The apps are located in _C:\Users\&lt;user name&gt;\Documents\Qlik\Sense\Apps_.
  Future<DocListEntry> getDocList() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetDocList', __params);
    var jsonData = rawResult['result']['qDocList'];
    var dartData =
        fromJsonFullType<DocListEntry>(const FullType(DocListEntry), jsonData);
    return dartData;
  }

  /// Retrieves information on the user interaction that is requested by the engine.
  /// Engine can request user interactions only during script reload and when the reload is performed in debug mode ( _qDebug_ is set to true when using the _DoReload method_ ).
  /// When running reload in debug mode, the engine pauses the script execution to receive data about user interaction. The engine can pause:
  /// * Before executing a new script statement.
  /// * When an error occurs while executing the script.
  /// * When the script execution is finished.
  ///
  /// To know if the engine is paused and waits for a response to an interaction request, the _GetProgress method_ should be used. The engine waits for a response if the property _qUserInteractionWanted_ is set to true in the response of the _GetProgress_ request.
  /// Informs the engine that a user interaction (which was earlier requested by the engine) was performed and indicates to the engine what to do next.
  Future<void> interactDone(int requestId, InteractDef def) async {
    var __params = <String, dynamic>{};
    __params['qRequestId'] = requestId;
    __params['qDef'] = toJson(def, specifiedType: const FullType(InteractDef));
    var rawResult = await query('InteractDone', __params);
  }

  /// Retrieves information about the authenticated user.
  Future<String> getAuthenticatedUser() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetAuthenticatedUser', __params);
    return rawResult['result']['qReturn'];
  }

  /// Creates an app and opens an engine session.
  /// <div class=note>This operation is possible only in Qlik Sense Desktop.</div>
  Future<Doc> createDocEx(String docName,
      {String userName,
      String password,
      String serial,
      String localizedScriptMainSection}) async {
    var __params = <String, dynamic>{};
    __params['qDocName'] = docName;
    if (userName != null) {
      __params['qUserName'] = userName;
    }
    if (password != null) {
      __params['qPassword'] = password;
    }
    if (serial != null) {
      __params['qSerial'] = serial;
    }
    if (localizedScriptMainSection != null) {
      __params['qLocalizedScriptMainSection'] = localizedScriptMainSection;
    }
    var rawResult = await query('CreateDocEx', __params);
    var jsonData = rawResult['result']['qReturn'];
    var dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), jsonData);
    return new Doc(enigma, dartData.handle);
  }

  /// Returns the handle of the current app.
  Future<Doc> getActiveDoc() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetActiveDoc', __params);
    var jsonData = rawResult['result']['qReturn'];
    var dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), jsonData);
    return new Doc(enigma, dartData.handle);
  }

  /// Indicates whether or not a user is able to create an app.
  Future<bool> allowCreateApp() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('AllowCreateApp', __params);
    return rawResult['result']['qReturn'];
  }

  /// Creates an app.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  ///
  /// ### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>&lt; MachineName&gt;AuditActivity<i>Engine.txt in Qlik Sense Enterprise &lt; MachineName&gt;AuditActivityEngine.log in Qlik Sense Desktop</td>
  /// <td>&lt; MachineName&gt;ServiceEngine.txt in Qlik Sense Enterprise&lt; MachineName&gt;ServiceEngine.log in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  ///
  /// ### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td>%ProgramData%/Qlik/Sense/Log/Engine</td>
  /// <td>%UserProfile%/Documents/Qlik/Sense/Log</td>
  /// </tr>
  /// </table>
  /// Deletes an app from the Qlik Sense repository or from the file system.
  ///
  /// #### Qlik Sense Enterprise
  /// In addition to being removed from the repository, the app is removed from the directory as well:
  /// *&lt;installation_directory&gt;\Qlik\Sense\Apps*
  /// The default installation directory is _ProgramData_.
  ///
  /// #### Qlik Sense Desktop
  /// The app is deleted from the directory _%userprofile%\Documents\Qlik\ \Apps_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  ///
  /// #### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>&lt;MachineName&gt;AuditActivityEngine.txt in Qlik Sense Enterprise &lt;MachineName&gt;AuditActivityEngine.log in Qlik Sense Desktop</td>
  /// <td>&lt;MachineName&gt;ServiceEngine.txt in Qlik Sense Enterprise &lt;MachineName&gt;ServiceEngine.log in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  ///
  /// #### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td>%ProgramData%/Qlik/Sense/Log/Engine</td>
  /// <td>%UserProfile%/Documents/Qlik/Sense/Log</td>
  /// </tr>
  /// </table>
  Future<bool> deleteApp(String appId) async {
    var __params = <String, dynamic>{};
    __params['qAppId'] = appId;
    var rawResult = await query('DeleteApp', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Indicates whether the user is working in Qlik Sense Desktop.
  Future<bool> isDesktopMode() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('IsDesktopMode', __params);
    return rawResult['result']['qReturn'];
  }

  /// Cancels an ongoing request. The request is stopped.
  Future<void> cancelRequest(int requestId) async {
    var __params = <String, dynamic>{};
    __params['qRequestId'] = requestId;
    var rawResult = await query('CancelRequest', __params);
  }

  /// Shuts down the Qlik engine.
  /// <div class=note>This operation is possible only in Qlik Sense Desktop.</div>
  Future<void> shutdownProcess() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('ShutdownProcess', __params);
  }

  /// Reloads the list of extensions.
  Future<void> reloadExtensionList() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('ReloadExtensionList', __params);
  }

  /// Replaces objects of a target app with the objects from a source app.
  /// The list of objects in the app to be replaced must be defined in _qIds_.
  /// <div class=note>The data model of the app cannot be updated. </div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> replaceAppFromID(
      String targetAppId, String srcAppID, List<String> ids) async {
    var __params = <String, dynamic>{};
    __params['qTargetAppId'] = targetAppId;
    __params['qSrcAppID'] = srcAppID;
    __params['qIds'] = ids;
    var rawResult = await query('ReplaceAppFromID', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Copies an app that is in the Qlik Sense repository.
  /// The engine copies the app into an app entity that was previously created by the repository. See the [Qlik Sense Repository Service API](#csh-RepositoryServiceAPI-Introduction) for more information.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  Future<bool> copyApp(
      String targetAppId, String srcAppId, List<String> ids) async {
    var __params = <String, dynamic>{};
    __params['qTargetAppId'] = targetAppId;
    __params['qSrcAppId'] = srcAppId;
    __params['qIds'] = ids;
    var rawResult = await query('CopyApp', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Exports an app from the Qlik Sense repository to the file system.
  /// <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  ///
  /// #### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td>*&lt;MachineName&gt;_AuditActivityEngine.txt*</td>
  /// <td>*&lt;MachineName&gt;_ServiceEngine.txt*</td>
  /// </tr>
  /// </table>
  ///
  /// The log files are located in:
  /// _%ProgramData%/Qlik/Sense/Log/Engine_
  Future<bool> exportApp(String targetPath, String srcAppId, List<String> ids,
      {bool noData}) async {
    var __params = <String, dynamic>{};
    __params['qTargetPath'] = targetPath;
    __params['qSrcAppId'] = srcAppId;
    __params['qIds'] = ids;
    if (noData != null) {
      __params['qNoData'] = noData;
    }
    var rawResult = await query('ExportApp', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Publishes an app to the supplied stream.
  Future<void> publishApp(String appId, String name, String streamId) async {
    var __params = <String, dynamic>{};
    __params['qAppId'] = appId;
    __params['qName'] = name;
    __params['qStreamId'] = streamId;
    var rawResult = await query('PublishApp', __params);
  }

  /// Indicates whether or not the user is working in personal mode (Qlik Sense Desktop).
  Future<bool> isPersonalMode() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('IsPersonalMode', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the unique identifier of the endpoint for the current user in the current app.
  /// <div class=note>This unique identifier can be used for logging purposes.</div>
  Future<String> getUniqueID() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetUniqueID', __params);
    return rawResult['result']['qUniqueID'];
  }

  /// Opens an app and checks if the app needs to be migrated (if the app is deprecated).
  /// The _OpenDoc method_ compares the version of the app with the version of Qlik Sense and migrates the app to the current version of Qlik Sense if necessary. Once the migration is done, the app is opened.
  /// If no migration is needed, the app is opened immediately.
  /// The following applies:
  /// * The app version is lower than 0.95: no migration is done. Apps older than the version 0.95 are not supported.
  /// * The app version is at least 0.95 and less than the Qlik Sense version: the app is migrated and then opened.
  /// * Qlik Sense and the app have the same version: the app is opened, no migration is needed.
  ///
  /// <div class=note>If the app is read-only, the app migration cannot occur. An error message is sent.</div>
  ///
  /// #### Backups
  /// In Qlik Sense Desktop, apps are automatically backed up before a migration.
  /// The backup files are located in _%userprofile%\Documents\Qlik\Sense\AppsBackup\&lt;Qlik Sense Desktop version&gt;_.
  /// In Qlik Sense Enterprise, no automatic back up is run. The back up should be done manually.
  Future<Doc> openDoc(String docName,
      {String userName, String password, String serial, bool noData}) async {
    var __params = <String, dynamic>{};
    __params['qDocName'] = docName;
    if (userName != null) {
      __params['qUserName'] = userName;
    }
    if (password != null) {
      __params['qPassword'] = password;
    }
    if (serial != null) {
      __params['qSerial'] = serial;
    }
    if (noData != null) {
      __params['qNoData'] = noData;
    }
    var rawResult = await query('OpenDoc', __params);
    var jsonData = rawResult['result']['qReturn'];
    var dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), jsonData);
    return new Doc(enigma, dartData.handle);
  }

  /// Creates an empty session app.
  /// The following applies:
  /// * The name of a session app cannot be chosen. The engine automatically assigns a unique identifier to the session app.
  /// * A session app is not persisted and cannot be saved. Everything created during a session app is non-persisted; for example: objects, data connections.
  Future<Doc> createSessionApp() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('CreateSessionApp', __params);
    var jsonData = rawResult['result']['qReturn'];
    var dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), jsonData);
    return new Doc(enigma, dartData.handle);
  }

  /// Creates a session app from a source app.
  /// The following applies:
  /// * The objects in the source app are copied into the session app but contain no data.
  /// * The script of the session app can be edited and reloaded.
  /// * The name of a session app cannot be chosen. The engine automatically assigns a unique identifier to the session app.
  /// * A session app is not persisted and cannot be saved. Everything created during a session app is non-persisted; for example: objects, data connections.
  Future<Doc> createSessionAppFromApp(String srcAppId) async {
    var __params = <String, dynamic>{};
    __params['qSrcAppId'] = srcAppId;
    var rawResult = await query('CreateSessionAppFromApp', __params);
    var jsonData = rawResult['result']['qReturn'];
    var dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), jsonData);
    return new Doc(enigma, dartData.handle);
  }

  /// Returns the Qlik Sense version number.
  Future<String> productVersion() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('ProductVersion', __params);
    return rawResult['result']['qReturn'];
  }

  /// Retrieves the meta data of an app.
  Future<AppEntry> getAppEntry(String appID) async {
    var __params = <String, dynamic>{};
    __params['qAppID'] = appID;
    var rawResult = await query('GetAppEntry', __params);
    var jsonData = rawResult['result']['qEntry'];
    var dartData =
        fromJsonFullType<AppEntry>(const FullType(AppEntry), jsonData);
    return dartData;
  }

  /// Configures the engine's behavior during a reload.
  /// <div class=note>The _ConfigureReload method_ should be run before the _DoReload method_. </div>
  Future<void> configureReload(
      bool cancelOnScriptError, bool useErrorData, bool interactOnError) async {
    var __params = <String, dynamic>{};
    __params['qCancelOnScriptError'] = cancelOnScriptError;
    __params['qUseErrorData'] = useErrorData;
    __params['qInteractOnError'] = interactOnError;
    var rawResult = await query('ConfigureReload', __params);
  }

  /// Cancels an ongoing reload. The reload of the app is stopped. The indexation can be canceled and _true_ is still the return value of the reload task.
  Future<void> cancelReload() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('CancelReload', __params);
  }

  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language. The BNF rules define the syntax for the script statements and the script or chart functions.
  /// In the Qlik engine BNF grammar, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
  Future<BNFDef> getBNF(String bnfType) async {
    var __params = <String, dynamic>{};
    __params['qBnfType'] = bnfType;
    var rawResult = await query('GetBNF', __params);
    var jsonData = rawResult['result']['qBnfDefs'];
    var dartData = fromJsonFullType<BNFDef>(const FullType(BNFDef), jsonData);
    return dartData;
  }

  /// Gets the list of all the script functions.
  Future<Function> getFunctions({String group}) async {
    var __params = <String, dynamic>{};
    if (group != null) {
      __params['qGroup'] = group;
    }
    var rawResult = await query('GetFunctions', __params);
    var jsonData = rawResult['result']['qFunctions'];
    var dartData =
        fromJsonFullType<Function>(const FullType(Function), jsonData);
    return dartData;
  }

  /// Returns the list of the ODBC connectors that are installed in the system.
  Future<OdbcDsn> getOdbcDsns() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetOdbcDsns', __params);
    var jsonData = rawResult['result']['qOdbcDsns'];
    var dartData = fromJsonFullType<OdbcDsn>(const FullType(OdbcDsn), jsonData);
    return dartData;
  }

  /// Returns the list of the OLEDB providers installed on the system.
  Future<OleDbProvider> getOleDbProviders() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetOleDbProviders', __params);
    var jsonData = rawResult['result']['qOleDbProviders'];
    var dartData = fromJsonFullType<OleDbProvider>(
        const FullType(OleDbProvider), jsonData);
    return dartData;
  }

  /// Lists the databases in a ODBC, OLEDB or CUSTOM data source.
  Future<Database> getDatabasesFromConnectionString(
      Connection connection) async {
    var __params = <String, dynamic>{};
    __params['qConnection'] =
        toJson(connection, specifiedType: const FullType(Connection));
    var rawResult = await query('GetDatabasesFromConnectionString', __params);
    var jsonData = rawResult['result']['qDatabases'];
    var dartData =
        fromJsonFullType<Database>(const FullType(Database), jsonData);
    return dartData;
  }

  /// Checks if a connection string is valid.
  Future<bool> isValidConnectionString(Connection connection) async {
    var __params = <String, dynamic>{};
    __params['qConnection'] =
        toJson(connection, specifiedType: const FullType(Connection));
    var rawResult = await query('IsValidConnectionString', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the folder where the apps are stored.
  /// <div class=note>This method applies only if running Qlik Sense Desktop.</div>
  Future<String> getDefaultAppFolder() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetDefaultAppFolder', __params);
    return rawResult['result']['qPath'];
  }

  /// Lists the logical drives in the system.
  /// <div class=note>This method applies only if running Qlik Sense Desktop.</div>
  Future<DriveInfo> getLogicalDriveStrings() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLogicalDriveStrings', __params);
    var jsonData = rawResult['result']['qDrives'];
    var dartData =
        fromJsonFullType<DriveInfo>(const FullType(DriveInfo), jsonData);
    return dartData;
  }

  /// Returns the files and folders located at a specified path.
  Future<FolderItem> getFolderItemsForPath(String path) async {
    var __params = <String, dynamic>{};
    __params['qPath'] = path;
    var rawResult = await query('GetFolderItemsForPath', __params);
    var jsonData = rawResult['result']['qFolderItems'];
    var dartData =
        fromJsonFullType<FolderItem>(const FullType(FolderItem), jsonData);
    return dartData;
  }

  /// Lists the supported code pages.
  Future<CodePage> getSupportedCodePages() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetSupportedCodePages', __params);
    var jsonData = rawResult['result']['qCodePages'];
    var dartData =
        fromJsonFullType<CodePage>(const FullType(CodePage), jsonData);
    return dartData;
  }

  /// List the custom connectors available in the system.
  Future<CustomConnector> getCustomConnectors({bool reloadList}) async {
    var __params = <String, dynamic>{};
    if (reloadList != null) {
      __params['qReloadList'] = reloadList;
    }
    var rawResult = await query('GetCustomConnectors', __params);
    var jsonData = rawResult['result']['qConnectors'];
    var dartData = fromJsonFullType<CustomConnector>(
        const FullType(CustomConnector), jsonData);
    return dartData;
  }

  /// Lists the streams.
  Future<NxStreamListEntry> getStreamList() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetStreamList', __params);
    var jsonData = rawResult['result']['qStreamList'];
    var dartData = fromJsonFullType<NxStreamListEntry>(
        const FullType(NxStreamListEntry), jsonData);
    return dartData;
  }

  /// Returns the version number of the Qlik engine component.
  Future<NxEngineVersion> engineVersion() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('EngineVersion', __params);
    var jsonData = rawResult['result']['qVersion'];
    var dartData = fromJsonFullType<NxEngineVersion>(
        const FullType(NxEngineVersion), jsonData);
    return dartData;
  }

  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language, as well as a string hash calculated from that grammar. The BNF rules define the syntax for the script statements and the script or chart functions. If the hash changes between subsequent calls to this method, this indicates that the BNF has changed.
  /// In the Qlik engine grammars, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
  /// Gets a string hash calculated from the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language. If the hash changes between subsequent calls to this method, this indicates that the BNF grammar has changed.
  Future<String> getBaseBNFHash(String bnfType) async {
    var __params = <String, dynamic>{};
    __params['qBnfType'] = bnfType;
    var rawResult = await query('GetBaseBNFHash', __params);
    return rawResult['result']['qBnfHash'];
  }

  /// Gets the current Backus-Naur Form (BNF) grammar of the Qlik engine scripting language, as well as a string hash calculated from that grammar. The BNF rules define the syntax for the script statements and the script or chart functions. If the hash changes between subsequent calls to this method, this indicates that the BNF has changed.
  /// In the Qlik engine grammars, a token is a string of one or more characters that is significant as a group. For example, a token could be a function name, a number, a letter, a parenthesis, and so on.
}