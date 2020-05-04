{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeBuild.Types.Product where

import Network.AWS.CodeBuild.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a build.
--
--
--
-- /See:/ 'build' smart constructor.
data Build =
  Build'
    { _bPhases                       :: !(Maybe [BuildPhase])
    , _bBuildComplete                :: !(Maybe Bool)
    , _bSecondaryArtifacts           :: !(Maybe [BuildArtifacts])
    , _bArn                          :: !(Maybe Text)
    , _bExportedEnvironmentVariables :: !(Maybe [ExportedEnvironmentVariable])
    , _bBuildNumber                  :: !(Maybe Integer)
    , _bStartTime                    :: !(Maybe POSIX)
    , _bArtifacts                    :: !(Maybe BuildArtifacts)
    , _bEnvironment                  :: !(Maybe ProjectEnvironment)
    , _bInitiator                    :: !(Maybe Text)
    , _bNetworkInterface             :: !(Maybe NetworkInterface)
    , _bSecondarySourceVersions      :: !(Maybe [ProjectSourceVersion])
    , _bCurrentPhase                 :: !(Maybe Text)
    , _bQueuedTimeoutInMinutes       :: !(Maybe Int)
    , _bCache                        :: !(Maybe ProjectCache)
    , _bSecondarySources             :: !(Maybe [ProjectSource])
    , _bSourceVersion                :: !(Maybe Text)
    , _bLogs                         :: !(Maybe LogsLocation)
    , _bResolvedSourceVersion        :: !(Maybe Text)
    , _bVpcConfig                    :: !(Maybe VPCConfig)
    , _bEndTime                      :: !(Maybe POSIX)
    , _bProjectName                  :: !(Maybe Text)
    , _bBuildStatus                  :: !(Maybe StatusType)
    , _bSource                       :: !(Maybe ProjectSource)
    , _bId                           :: !(Maybe Text)
    , _bFileSystemLocations          :: !(Maybe [ProjectFileSystemLocation])
    , _bReportARNs                   :: !(Maybe [Text])
    , _bEncryptionKey                :: !(Maybe Text)
    , _bServiceRole                  :: !(Maybe Text)
    , _bTimeoutInMinutes             :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bPhases' - Information about all previous build phases that are complete and information about any current build phase that is not yet complete.
--
-- * 'bBuildComplete' - Whether the build is complete. True if complete; otherwise, false.
--
-- * 'bSecondaryArtifacts' - An array of @ProjectArtifacts@ objects.
--
-- * 'bArn' - The Amazon Resource Name (ARN) of the build.
--
-- * 'bExportedEnvironmentVariables' - A list of exported environment variables for this build.
--
-- * 'bBuildNumber' - The number of the build. For each project, the @buildNumber@ of its first build is @1@ . The @buildNumber@ of each subsequent build is incremented by @1@ . If a build is deleted, the @buildNumber@ of other builds does not change.
--
-- * 'bStartTime' - When the build process started, expressed in Unix time format.
--
-- * 'bArtifacts' - Information about the output artifacts for the build.
--
-- * 'bEnvironment' - Information about the build environment for this build.
--
-- * 'bInitiator' - The entity that started the build. Valid values include:     * If AWS CodePipeline started the build, the pipeline's name (for example, @codepipeline/my-demo-pipeline@ ).     * If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example, @MyUserName@ ).     * If the Jenkins plugin for AWS CodeBuild started the build, the string @CodeBuild-Jenkins-Plugin@ .
--
-- * 'bNetworkInterface' - Describes a network interface.
--
-- * 'bSecondarySourceVersions' - An array of @ProjectSourceVersion@ objects. Each @ProjectSourceVersion@ must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.
--
-- * 'bCurrentPhase' - The current build phase.
--
-- * 'bQueuedTimeoutInMinutes' - The number of minutes a build is allowed to be queued before it times out.
--
-- * 'bCache' - Information about the cache for the build.
--
-- * 'bSecondarySources' - An array of @ProjectSource@ objects.
--
-- * 'bSourceVersion' - Any version identifier for the version of the source code to be built. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'bLogs' - Information about the build's logs in Amazon CloudWatch Logs.
--
-- * 'bResolvedSourceVersion' - An identifier for the version of this build's source code.      * For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.      * For AWS CodePipeline, the source revision provided by AWS CodePipeline.      * For Amazon Simple Storage Service (Amazon S3), this does not apply.
--
-- * 'bVpcConfig' - If your AWS CodeBuild project accesses resources in an Amazon VPC, you provide this parameter that identifies the VPC ID and the list of security group IDs and subnet IDs. The security groups and subnets must belong to the same VPC. You must provide at least one security group and one subnet ID.
--
-- * 'bEndTime' - When the build process ended, expressed in Unix time format.
--
-- * 'bProjectName' - The name of the AWS CodeBuild project.
--
-- * 'bBuildStatus' - The current status of the build. Valid values include:     * @FAILED@ : The build failed.     * @FAULT@ : The build faulted.     * @IN_PROGRESS@ : The build is still in progress.     * @STOPPED@ : The build stopped.     * @SUCCEEDED@ : The build succeeded.     * @TIMED_OUT@ : The build timed out.
--
-- * 'bSource' - Information about the source code to be built.
--
-- * 'bId' - The unique ID for the build.
--
-- * 'bFileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
--
-- * 'bReportARNs' - An array of the ARNs associated with this build's reports.
--
-- * 'bEncryptionKey' - The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias//alias-name/ @ ).
--
-- * 'bServiceRole' - The name of a service role used for this build.
--
-- * 'bTimeoutInMinutes' - How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.
build
    :: Build
build =
  Build'
    { _bPhases = Nothing
    , _bBuildComplete = Nothing
    , _bSecondaryArtifacts = Nothing
    , _bArn = Nothing
    , _bExportedEnvironmentVariables = Nothing
    , _bBuildNumber = Nothing
    , _bStartTime = Nothing
    , _bArtifacts = Nothing
    , _bEnvironment = Nothing
    , _bInitiator = Nothing
    , _bNetworkInterface = Nothing
    , _bSecondarySourceVersions = Nothing
    , _bCurrentPhase = Nothing
    , _bQueuedTimeoutInMinutes = Nothing
    , _bCache = Nothing
    , _bSecondarySources = Nothing
    , _bSourceVersion = Nothing
    , _bLogs = Nothing
    , _bResolvedSourceVersion = Nothing
    , _bVpcConfig = Nothing
    , _bEndTime = Nothing
    , _bProjectName = Nothing
    , _bBuildStatus = Nothing
    , _bSource = Nothing
    , _bId = Nothing
    , _bFileSystemLocations = Nothing
    , _bReportARNs = Nothing
    , _bEncryptionKey = Nothing
    , _bServiceRole = Nothing
    , _bTimeoutInMinutes = Nothing
    }


-- | Information about all previous build phases that are complete and information about any current build phase that is not yet complete.
bPhases :: Lens' Build [BuildPhase]
bPhases = lens _bPhases (\ s a -> s{_bPhases = a}) . _Default . _Coerce

-- | Whether the build is complete. True if complete; otherwise, false.
bBuildComplete :: Lens' Build (Maybe Bool)
bBuildComplete = lens _bBuildComplete (\ s a -> s{_bBuildComplete = a})

-- | An array of @ProjectArtifacts@ objects.
bSecondaryArtifacts :: Lens' Build [BuildArtifacts]
bSecondaryArtifacts = lens _bSecondaryArtifacts (\ s a -> s{_bSecondaryArtifacts = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the build.
bArn :: Lens' Build (Maybe Text)
bArn = lens _bArn (\ s a -> s{_bArn = a})

-- | A list of exported environment variables for this build.
bExportedEnvironmentVariables :: Lens' Build [ExportedEnvironmentVariable]
bExportedEnvironmentVariables = lens _bExportedEnvironmentVariables (\ s a -> s{_bExportedEnvironmentVariables = a}) . _Default . _Coerce

-- | The number of the build. For each project, the @buildNumber@ of its first build is @1@ . The @buildNumber@ of each subsequent build is incremented by @1@ . If a build is deleted, the @buildNumber@ of other builds does not change.
bBuildNumber :: Lens' Build (Maybe Integer)
bBuildNumber = lens _bBuildNumber (\ s a -> s{_bBuildNumber = a})

-- | When the build process started, expressed in Unix time format.
bStartTime :: Lens' Build (Maybe UTCTime)
bStartTime = lens _bStartTime (\ s a -> s{_bStartTime = a}) . mapping _Time

-- | Information about the output artifacts for the build.
bArtifacts :: Lens' Build (Maybe BuildArtifacts)
bArtifacts = lens _bArtifacts (\ s a -> s{_bArtifacts = a})

-- | Information about the build environment for this build.
bEnvironment :: Lens' Build (Maybe ProjectEnvironment)
bEnvironment = lens _bEnvironment (\ s a -> s{_bEnvironment = a})

-- | The entity that started the build. Valid values include:     * If AWS CodePipeline started the build, the pipeline's name (for example, @codepipeline/my-demo-pipeline@ ).     * If an AWS Identity and Access Management (IAM) user started the build, the user's name (for example, @MyUserName@ ).     * If the Jenkins plugin for AWS CodeBuild started the build, the string @CodeBuild-Jenkins-Plugin@ .
bInitiator :: Lens' Build (Maybe Text)
bInitiator = lens _bInitiator (\ s a -> s{_bInitiator = a})

-- | Describes a network interface.
bNetworkInterface :: Lens' Build (Maybe NetworkInterface)
bNetworkInterface = lens _bNetworkInterface (\ s a -> s{_bNetworkInterface = a})

-- | An array of @ProjectSourceVersion@ objects. Each @ProjectSourceVersion@ must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use.
bSecondarySourceVersions :: Lens' Build [ProjectSourceVersion]
bSecondarySourceVersions = lens _bSecondarySourceVersions (\ s a -> s{_bSecondarySourceVersions = a}) . _Default . _Coerce

-- | The current build phase.
bCurrentPhase :: Lens' Build (Maybe Text)
bCurrentPhase = lens _bCurrentPhase (\ s a -> s{_bCurrentPhase = a})

-- | The number of minutes a build is allowed to be queued before it times out.
bQueuedTimeoutInMinutes :: Lens' Build (Maybe Int)
bQueuedTimeoutInMinutes = lens _bQueuedTimeoutInMinutes (\ s a -> s{_bQueuedTimeoutInMinutes = a})

-- | Information about the cache for the build.
bCache :: Lens' Build (Maybe ProjectCache)
bCache = lens _bCache (\ s a -> s{_bCache = a})

-- | An array of @ProjectSource@ objects.
bSecondarySources :: Lens' Build [ProjectSource]
bSecondarySources = lens _bSecondarySources (\ s a -> s{_bSecondarySources = a}) . _Default . _Coerce

-- | Any version identifier for the version of the source code to be built. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
bSourceVersion :: Lens' Build (Maybe Text)
bSourceVersion = lens _bSourceVersion (\ s a -> s{_bSourceVersion = a})

-- | Information about the build's logs in Amazon CloudWatch Logs.
bLogs :: Lens' Build (Maybe LogsLocation)
bLogs = lens _bLogs (\ s a -> s{_bLogs = a})

-- | An identifier for the version of this build's source code.      * For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.      * For AWS CodePipeline, the source revision provided by AWS CodePipeline.      * For Amazon Simple Storage Service (Amazon S3), this does not apply.
bResolvedSourceVersion :: Lens' Build (Maybe Text)
bResolvedSourceVersion = lens _bResolvedSourceVersion (\ s a -> s{_bResolvedSourceVersion = a})

-- | If your AWS CodeBuild project accesses resources in an Amazon VPC, you provide this parameter that identifies the VPC ID and the list of security group IDs and subnet IDs. The security groups and subnets must belong to the same VPC. You must provide at least one security group and one subnet ID.
bVpcConfig :: Lens' Build (Maybe VPCConfig)
bVpcConfig = lens _bVpcConfig (\ s a -> s{_bVpcConfig = a})

-- | When the build process ended, expressed in Unix time format.
bEndTime :: Lens' Build (Maybe UTCTime)
bEndTime = lens _bEndTime (\ s a -> s{_bEndTime = a}) . mapping _Time

-- | The name of the AWS CodeBuild project.
bProjectName :: Lens' Build (Maybe Text)
bProjectName = lens _bProjectName (\ s a -> s{_bProjectName = a})

-- | The current status of the build. Valid values include:     * @FAILED@ : The build failed.     * @FAULT@ : The build faulted.     * @IN_PROGRESS@ : The build is still in progress.     * @STOPPED@ : The build stopped.     * @SUCCEEDED@ : The build succeeded.     * @TIMED_OUT@ : The build timed out.
bBuildStatus :: Lens' Build (Maybe StatusType)
bBuildStatus = lens _bBuildStatus (\ s a -> s{_bBuildStatus = a})

-- | Information about the source code to be built.
bSource :: Lens' Build (Maybe ProjectSource)
bSource = lens _bSource (\ s a -> s{_bSource = a})

-- | The unique ID for the build.
bId :: Lens' Build (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
bFileSystemLocations :: Lens' Build [ProjectFileSystemLocation]
bFileSystemLocations = lens _bFileSystemLocations (\ s a -> s{_bFileSystemLocations = a}) . _Default . _Coerce

-- | An array of the ARNs associated with this build's reports.
bReportARNs :: Lens' Build [Text]
bReportARNs = lens _bReportARNs (\ s a -> s{_bReportARNs = a}) . _Default . _Coerce

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias//alias-name/ @ ).
bEncryptionKey :: Lens' Build (Maybe Text)
bEncryptionKey = lens _bEncryptionKey (\ s a -> s{_bEncryptionKey = a})

-- | The name of a service role used for this build.
bServiceRole :: Lens' Build (Maybe Text)
bServiceRole = lens _bServiceRole (\ s a -> s{_bServiceRole = a})

-- | How long, in minutes, for AWS CodeBuild to wait before timing out this build if it does not get marked as completed.
bTimeoutInMinutes :: Lens' Build (Maybe Int)
bTimeoutInMinutes = lens _bTimeoutInMinutes (\ s a -> s{_bTimeoutInMinutes = a})

instance FromJSON Build where
        parseJSON
          = withObject "Build"
              (\ x ->
                 Build' <$>
                   (x .:? "phases" .!= mempty) <*>
                     (x .:? "buildComplete")
                     <*> (x .:? "secondaryArtifacts" .!= mempty)
                     <*> (x .:? "arn")
                     <*> (x .:? "exportedEnvironmentVariables" .!= mempty)
                     <*> (x .:? "buildNumber")
                     <*> (x .:? "startTime")
                     <*> (x .:? "artifacts")
                     <*> (x .:? "environment")
                     <*> (x .:? "initiator")
                     <*> (x .:? "networkInterface")
                     <*> (x .:? "secondarySourceVersions" .!= mempty)
                     <*> (x .:? "currentPhase")
                     <*> (x .:? "queuedTimeoutInMinutes")
                     <*> (x .:? "cache")
                     <*> (x .:? "secondarySources" .!= mempty)
                     <*> (x .:? "sourceVersion")
                     <*> (x .:? "logs")
                     <*> (x .:? "resolvedSourceVersion")
                     <*> (x .:? "vpcConfig")
                     <*> (x .:? "endTime")
                     <*> (x .:? "projectName")
                     <*> (x .:? "buildStatus")
                     <*> (x .:? "source")
                     <*> (x .:? "id")
                     <*> (x .:? "fileSystemLocations" .!= mempty)
                     <*> (x .:? "reportArns" .!= mempty)
                     <*> (x .:? "encryptionKey")
                     <*> (x .:? "serviceRole")
                     <*> (x .:? "timeoutInMinutes"))

instance Hashable Build where

instance NFData Build where

-- | Information about build output artifacts.
--
--
--
-- /See:/ 'buildArtifacts' smart constructor.
data BuildArtifacts =
  BuildArtifacts'
    { _baLocation             :: !(Maybe Text)
    , _baMd5sum               :: !(Maybe Text)
    , _baEncryptionDisabled   :: !(Maybe Bool)
    , _baOverrideArtifactName :: !(Maybe Bool)
    , _baArtifactIdentifier   :: !(Maybe Text)
    , _baSha256sum            :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baLocation' - Information about the location of the build artifacts.
--
-- * 'baMd5sum' - The MD5 hash of the build artifact. You can use this hash along with a checksum tool to confirm file integrity and authenticity.
--
-- * 'baEncryptionDisabled' - Information that tells you if encryption for build artifacts is disabled.
--
-- * 'baOverrideArtifactName' - If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique.
--
-- * 'baArtifactIdentifier' - An identifier for this artifact definition.
--
-- * 'baSha256sum' - The SHA-256 hash of the build artifact. You can use this hash along with a checksum tool to confirm file integrity and authenticity.
buildArtifacts
    :: BuildArtifacts
buildArtifacts =
  BuildArtifacts'
    { _baLocation = Nothing
    , _baMd5sum = Nothing
    , _baEncryptionDisabled = Nothing
    , _baOverrideArtifactName = Nothing
    , _baArtifactIdentifier = Nothing
    , _baSha256sum = Nothing
    }


-- | Information about the location of the build artifacts.
baLocation :: Lens' BuildArtifacts (Maybe Text)
baLocation = lens _baLocation (\ s a -> s{_baLocation = a})

-- | The MD5 hash of the build artifact. You can use this hash along with a checksum tool to confirm file integrity and authenticity.
baMd5sum :: Lens' BuildArtifacts (Maybe Text)
baMd5sum = lens _baMd5sum (\ s a -> s{_baMd5sum = a})

-- | Information that tells you if encryption for build artifacts is disabled.
baEncryptionDisabled :: Lens' BuildArtifacts (Maybe Bool)
baEncryptionDisabled = lens _baEncryptionDisabled (\ s a -> s{_baEncryptionDisabled = a})

-- | If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique.
baOverrideArtifactName :: Lens' BuildArtifacts (Maybe Bool)
baOverrideArtifactName = lens _baOverrideArtifactName (\ s a -> s{_baOverrideArtifactName = a})

-- | An identifier for this artifact definition.
baArtifactIdentifier :: Lens' BuildArtifacts (Maybe Text)
baArtifactIdentifier = lens _baArtifactIdentifier (\ s a -> s{_baArtifactIdentifier = a})

-- | The SHA-256 hash of the build artifact. You can use this hash along with a checksum tool to confirm file integrity and authenticity.
baSha256sum :: Lens' BuildArtifacts (Maybe Text)
baSha256sum = lens _baSha256sum (\ s a -> s{_baSha256sum = a})

instance FromJSON BuildArtifacts where
        parseJSON
          = withObject "BuildArtifacts"
              (\ x ->
                 BuildArtifacts' <$>
                   (x .:? "location") <*> (x .:? "md5sum") <*>
                     (x .:? "encryptionDisabled")
                     <*> (x .:? "overrideArtifactName")
                     <*> (x .:? "artifactIdentifier")
                     <*> (x .:? "sha256sum"))

instance Hashable BuildArtifacts where

instance NFData BuildArtifacts where

-- | Information about a build that could not be successfully deleted.
--
--
--
-- /See:/ 'buildNotDeleted' smart constructor.
data BuildNotDeleted =
  BuildNotDeleted'
    { _bndId         :: !(Maybe Text)
    , _bndStatusCode :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildNotDeleted' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bndId' - The ID of the build that could not be successfully deleted.
--
-- * 'bndStatusCode' - Additional information about the build that could not be successfully deleted.
buildNotDeleted
    :: BuildNotDeleted
buildNotDeleted = BuildNotDeleted' {_bndId = Nothing, _bndStatusCode = Nothing}


-- | The ID of the build that could not be successfully deleted.
bndId :: Lens' BuildNotDeleted (Maybe Text)
bndId = lens _bndId (\ s a -> s{_bndId = a})

-- | Additional information about the build that could not be successfully deleted.
bndStatusCode :: Lens' BuildNotDeleted (Maybe Text)
bndStatusCode = lens _bndStatusCode (\ s a -> s{_bndStatusCode = a})

instance FromJSON BuildNotDeleted where
        parseJSON
          = withObject "BuildNotDeleted"
              (\ x ->
                 BuildNotDeleted' <$>
                   (x .:? "id") <*> (x .:? "statusCode"))

instance Hashable BuildNotDeleted where

instance NFData BuildNotDeleted where

-- | Information about a stage for a build.
--
--
--
-- /See:/ 'buildPhase' smart constructor.
data BuildPhase =
  BuildPhase'
    { _bpContexts          :: !(Maybe [PhaseContext])
    , _bpStartTime         :: !(Maybe POSIX)
    , _bpPhaseStatus       :: !(Maybe StatusType)
    , _bpPhaseType         :: !(Maybe BuildPhaseType)
    , _bpEndTime           :: !(Maybe POSIX)
    , _bpDurationInSeconds :: !(Maybe Integer)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuildPhase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpContexts' - Additional information about a build phase, especially to help troubleshoot a failed build.
--
-- * 'bpStartTime' - When the build phase started, expressed in Unix time format.
--
-- * 'bpPhaseStatus' - The current status of the build phase. Valid values include:     * @FAILED@ : The build phase failed.     * @FAULT@ : The build phase faulted.     * @IN_PROGRESS@ : The build phase is still in progress.     * @QUEUED@ : The build has been submitted and is queued behind other submitted builds.     * @STOPPED@ : The build phase stopped.     * @SUCCEEDED@ : The build phase succeeded.     * @TIMED_OUT@ : The build phase timed out.
--
-- * 'bpPhaseType' - The name of the build phase. Valid values include:     * @BUILD@ : Core build activities typically occur in this build phase.     * @COMPLETED@ : The build has been completed.     * @DOWNLOAD_SOURCE@ : Source code is being downloaded in this build phase.     * @FINALIZING@ : The build process is completing in this build phase.     * @INSTALL@ : Installation activities typically occur in this build phase.     * @POST_BUILD@ : Post-build activities typically occur in this build phase.     * @PRE_BUILD@ : Pre-build activities typically occur in this build phase.     * @PROVISIONING@ : The build environment is being set up.     * @QUEUED@ : The build has been submitted and is queued behind other submitted builds.     * @SUBMITTED@ : The build has been submitted.     * @UPLOAD_ARTIFACTS@ : Build output artifacts are being uploaded to the output location.
--
-- * 'bpEndTime' - When the build phase ended, expressed in Unix time format.
--
-- * 'bpDurationInSeconds' - How long, in seconds, between the starting and ending times of the build's phase.
buildPhase
    :: BuildPhase
buildPhase =
  BuildPhase'
    { _bpContexts = Nothing
    , _bpStartTime = Nothing
    , _bpPhaseStatus = Nothing
    , _bpPhaseType = Nothing
    , _bpEndTime = Nothing
    , _bpDurationInSeconds = Nothing
    }


-- | Additional information about a build phase, especially to help troubleshoot a failed build.
bpContexts :: Lens' BuildPhase [PhaseContext]
bpContexts = lens _bpContexts (\ s a -> s{_bpContexts = a}) . _Default . _Coerce

-- | When the build phase started, expressed in Unix time format.
bpStartTime :: Lens' BuildPhase (Maybe UTCTime)
bpStartTime = lens _bpStartTime (\ s a -> s{_bpStartTime = a}) . mapping _Time

-- | The current status of the build phase. Valid values include:     * @FAILED@ : The build phase failed.     * @FAULT@ : The build phase faulted.     * @IN_PROGRESS@ : The build phase is still in progress.     * @QUEUED@ : The build has been submitted and is queued behind other submitted builds.     * @STOPPED@ : The build phase stopped.     * @SUCCEEDED@ : The build phase succeeded.     * @TIMED_OUT@ : The build phase timed out.
bpPhaseStatus :: Lens' BuildPhase (Maybe StatusType)
bpPhaseStatus = lens _bpPhaseStatus (\ s a -> s{_bpPhaseStatus = a})

-- | The name of the build phase. Valid values include:     * @BUILD@ : Core build activities typically occur in this build phase.     * @COMPLETED@ : The build has been completed.     * @DOWNLOAD_SOURCE@ : Source code is being downloaded in this build phase.     * @FINALIZING@ : The build process is completing in this build phase.     * @INSTALL@ : Installation activities typically occur in this build phase.     * @POST_BUILD@ : Post-build activities typically occur in this build phase.     * @PRE_BUILD@ : Pre-build activities typically occur in this build phase.     * @PROVISIONING@ : The build environment is being set up.     * @QUEUED@ : The build has been submitted and is queued behind other submitted builds.     * @SUBMITTED@ : The build has been submitted.     * @UPLOAD_ARTIFACTS@ : Build output artifacts are being uploaded to the output location.
bpPhaseType :: Lens' BuildPhase (Maybe BuildPhaseType)
bpPhaseType = lens _bpPhaseType (\ s a -> s{_bpPhaseType = a})

-- | When the build phase ended, expressed in Unix time format.
bpEndTime :: Lens' BuildPhase (Maybe UTCTime)
bpEndTime = lens _bpEndTime (\ s a -> s{_bpEndTime = a}) . mapping _Time

-- | How long, in seconds, between the starting and ending times of the build's phase.
bpDurationInSeconds :: Lens' BuildPhase (Maybe Integer)
bpDurationInSeconds = lens _bpDurationInSeconds (\ s a -> s{_bpDurationInSeconds = a})

instance FromJSON BuildPhase where
        parseJSON
          = withObject "BuildPhase"
              (\ x ->
                 BuildPhase' <$>
                   (x .:? "contexts" .!= mempty) <*> (x .:? "startTime")
                     <*> (x .:? "phaseStatus")
                     <*> (x .:? "phaseType")
                     <*> (x .:? "endTime")
                     <*> (x .:? "durationInSeconds"))

instance Hashable BuildPhase where

instance NFData BuildPhase where

-- | Information about Amazon CloudWatch Logs for a build project.
--
--
--
-- /See:/ 'cloudWatchLogsConfig' smart constructor.
data CloudWatchLogsConfig =
  CloudWatchLogsConfig'
    { _cwlcGroupName  :: !(Maybe Text)
    , _cwlcStreamName :: !(Maybe Text)
    , _cwlcStatus     :: !LogsConfigStatusType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudWatchLogsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwlcGroupName' - The group name of the logs in Amazon CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html Working with Log Groups and Log Streams> .
--
-- * 'cwlcStreamName' - The prefix of the stream name of the Amazon CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html Working with Log Groups and Log Streams> .
--
-- * 'cwlcStatus' - The current status of the logs in Amazon CloudWatch Logs for a build project. Valid values are:     * @ENABLED@ : Amazon CloudWatch Logs are enabled for this build project.     * @DISABLED@ : Amazon CloudWatch Logs are not enabled for this build project.
cloudWatchLogsConfig
    :: LogsConfigStatusType -- ^ 'cwlcStatus'
    -> CloudWatchLogsConfig
cloudWatchLogsConfig pStatus_ =
  CloudWatchLogsConfig'
    { _cwlcGroupName = Nothing
    , _cwlcStreamName = Nothing
    , _cwlcStatus = pStatus_
    }


-- | The group name of the logs in Amazon CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html Working with Log Groups and Log Streams> .
cwlcGroupName :: Lens' CloudWatchLogsConfig (Maybe Text)
cwlcGroupName = lens _cwlcGroupName (\ s a -> s{_cwlcGroupName = a})

-- | The prefix of the stream name of the Amazon CloudWatch Logs. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html Working with Log Groups and Log Streams> .
cwlcStreamName :: Lens' CloudWatchLogsConfig (Maybe Text)
cwlcStreamName = lens _cwlcStreamName (\ s a -> s{_cwlcStreamName = a})

-- | The current status of the logs in Amazon CloudWatch Logs for a build project. Valid values are:     * @ENABLED@ : Amazon CloudWatch Logs are enabled for this build project.     * @DISABLED@ : Amazon CloudWatch Logs are not enabled for this build project.
cwlcStatus :: Lens' CloudWatchLogsConfig LogsConfigStatusType
cwlcStatus = lens _cwlcStatus (\ s a -> s{_cwlcStatus = a})

instance FromJSON CloudWatchLogsConfig where
        parseJSON
          = withObject "CloudWatchLogsConfig"
              (\ x ->
                 CloudWatchLogsConfig' <$>
                   (x .:? "groupName") <*> (x .:? "streamName") <*>
                     (x .: "status"))

instance Hashable CloudWatchLogsConfig where

instance NFData CloudWatchLogsConfig where

instance ToJSON CloudWatchLogsConfig where
        toJSON CloudWatchLogsConfig'{..}
          = object
              (catMaybes
                 [("groupName" .=) <$> _cwlcGroupName,
                  ("streamName" .=) <$> _cwlcStreamName,
                  Just ("status" .= _cwlcStatus)])

-- | Information about a Docker image that is managed by AWS CodeBuild.
--
--
--
-- /See:/ 'environmentImage' smart constructor.
data EnvironmentImage =
  EnvironmentImage'
    { _eiVersions    :: !(Maybe [Text])
    , _eiName        :: !(Maybe Text)
    , _eiDescription :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiVersions' - A list of environment image versions.
--
-- * 'eiName' - The name of the Docker image.
--
-- * 'eiDescription' - The description of the Docker image.
environmentImage
    :: EnvironmentImage
environmentImage =
  EnvironmentImage'
    {_eiVersions = Nothing, _eiName = Nothing, _eiDescription = Nothing}


-- | A list of environment image versions.
eiVersions :: Lens' EnvironmentImage [Text]
eiVersions = lens _eiVersions (\ s a -> s{_eiVersions = a}) . _Default . _Coerce

-- | The name of the Docker image.
eiName :: Lens' EnvironmentImage (Maybe Text)
eiName = lens _eiName (\ s a -> s{_eiName = a})

-- | The description of the Docker image.
eiDescription :: Lens' EnvironmentImage (Maybe Text)
eiDescription = lens _eiDescription (\ s a -> s{_eiDescription = a})

instance FromJSON EnvironmentImage where
        parseJSON
          = withObject "EnvironmentImage"
              (\ x ->
                 EnvironmentImage' <$>
                   (x .:? "versions" .!= mempty) <*> (x .:? "name") <*>
                     (x .:? "description"))

instance Hashable EnvironmentImage where

instance NFData EnvironmentImage where

-- | A set of Docker images that are related by programming language and are managed by AWS CodeBuild.
--
--
--
-- /See:/ 'environmentLanguage' smart constructor.
data EnvironmentLanguage =
  EnvironmentLanguage'
    { _elImages   :: !(Maybe [EnvironmentImage])
    , _elLanguage :: !(Maybe LanguageType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elImages' - The list of Docker images that are related by the specified programming language.
--
-- * 'elLanguage' - The programming language for the Docker images.
environmentLanguage
    :: EnvironmentLanguage
environmentLanguage =
  EnvironmentLanguage' {_elImages = Nothing, _elLanguage = Nothing}


-- | The list of Docker images that are related by the specified programming language.
elImages :: Lens' EnvironmentLanguage [EnvironmentImage]
elImages = lens _elImages (\ s a -> s{_elImages = a}) . _Default . _Coerce

-- | The programming language for the Docker images.
elLanguage :: Lens' EnvironmentLanguage (Maybe LanguageType)
elLanguage = lens _elLanguage (\ s a -> s{_elLanguage = a})

instance FromJSON EnvironmentLanguage where
        parseJSON
          = withObject "EnvironmentLanguage"
              (\ x ->
                 EnvironmentLanguage' <$>
                   (x .:? "images" .!= mempty) <*> (x .:? "language"))

instance Hashable EnvironmentLanguage where

instance NFData EnvironmentLanguage where

-- | A set of Docker images that are related by platform and are managed by AWS CodeBuild.
--
--
--
-- /See:/ 'environmentPlatform' smart constructor.
data EnvironmentPlatform =
  EnvironmentPlatform'
    { _epPlatform  :: !(Maybe PlatformType)
    , _epLanguages :: !(Maybe [EnvironmentLanguage])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentPlatform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epPlatform' - The platform's name.
--
-- * 'epLanguages' - The list of programming languages that are available for the specified platform.
environmentPlatform
    :: EnvironmentPlatform
environmentPlatform =
  EnvironmentPlatform' {_epPlatform = Nothing, _epLanguages = Nothing}


-- | The platform's name.
epPlatform :: Lens' EnvironmentPlatform (Maybe PlatformType)
epPlatform = lens _epPlatform (\ s a -> s{_epPlatform = a})

-- | The list of programming languages that are available for the specified platform.
epLanguages :: Lens' EnvironmentPlatform [EnvironmentLanguage]
epLanguages = lens _epLanguages (\ s a -> s{_epLanguages = a}) . _Default . _Coerce

instance FromJSON EnvironmentPlatform where
        parseJSON
          = withObject "EnvironmentPlatform"
              (\ x ->
                 EnvironmentPlatform' <$>
                   (x .:? "platform") <*>
                     (x .:? "languages" .!= mempty))

instance Hashable EnvironmentPlatform where

instance NFData EnvironmentPlatform where

-- | Information about an environment variable for a build project or a build.
--
--
--
-- /See:/ 'environmentVariable' smart constructor.
data EnvironmentVariable =
  EnvironmentVariable'
    { _evType  :: !(Maybe EnvironmentVariableType)
    , _evName  :: !Text
    , _evValue :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evType' - The type of environment variable. Valid values include:     * @PARAMETER_STORE@ : An environment variable stored in Amazon EC2 Systems Manager Parameter Store.     * @PLAINTEXT@ : An environment variable in plain text format. This is the default value.     * @SECRETS_MANAGER@ : An environment variable stored in AWS Secrets Manager.
--
-- * 'evName' - The name or key of the environment variable.
--
-- * 'evValue' - The value of the environment variable. /Important:/ We strongly discourage the use of @PLAINTEXT@ environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. @PLAINTEXT@ environment variables can be displayed in plain text using the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI). For sensitive values, we recommend you use an environment variable of type @PARAMETER_STORE@ or @SECRETS_MANAGER@ .
environmentVariable
    :: Text -- ^ 'evName'
    -> Text -- ^ 'evValue'
    -> EnvironmentVariable
environmentVariable pName_ pValue_ =
  EnvironmentVariable' {_evType = Nothing, _evName = pName_, _evValue = pValue_}


-- | The type of environment variable. Valid values include:     * @PARAMETER_STORE@ : An environment variable stored in Amazon EC2 Systems Manager Parameter Store.     * @PLAINTEXT@ : An environment variable in plain text format. This is the default value.     * @SECRETS_MANAGER@ : An environment variable stored in AWS Secrets Manager.
evType :: Lens' EnvironmentVariable (Maybe EnvironmentVariableType)
evType = lens _evType (\ s a -> s{_evType = a})

-- | The name or key of the environment variable.
evName :: Lens' EnvironmentVariable Text
evName = lens _evName (\ s a -> s{_evName = a})

-- | The value of the environment variable. /Important:/ We strongly discourage the use of @PLAINTEXT@ environment variables to store sensitive values, especially AWS secret key IDs and secret access keys. @PLAINTEXT@ environment variables can be displayed in plain text using the AWS CodeBuild console and the AWS Command Line Interface (AWS CLI). For sensitive values, we recommend you use an environment variable of type @PARAMETER_STORE@ or @SECRETS_MANAGER@ .
evValue :: Lens' EnvironmentVariable Text
evValue = lens _evValue (\ s a -> s{_evValue = a})

instance FromJSON EnvironmentVariable where
        parseJSON
          = withObject "EnvironmentVariable"
              (\ x ->
                 EnvironmentVariable' <$>
                   (x .:? "type") <*> (x .: "name") <*> (x .: "value"))

instance Hashable EnvironmentVariable where

instance NFData EnvironmentVariable where

instance ToJSON EnvironmentVariable where
        toJSON EnvironmentVariable'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _evType, Just ("name" .= _evName),
                  Just ("value" .= _evValue)])

-- | Information about an exported environment variable.
--
--
--
-- /See:/ 'exportedEnvironmentVariable' smart constructor.
data ExportedEnvironmentVariable =
  ExportedEnvironmentVariable'
    { _eevValue :: !(Maybe Text)
    , _eevName  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportedEnvironmentVariable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eevValue' - The value assigned to this exported environment variable.
--
-- * 'eevName' - The name of this exported environment variable.
exportedEnvironmentVariable
    :: ExportedEnvironmentVariable
exportedEnvironmentVariable =
  ExportedEnvironmentVariable' {_eevValue = Nothing, _eevName = Nothing}


-- | The value assigned to this exported environment variable.
eevValue :: Lens' ExportedEnvironmentVariable (Maybe Text)
eevValue = lens _eevValue (\ s a -> s{_eevValue = a})

-- | The name of this exported environment variable.
eevName :: Lens' ExportedEnvironmentVariable (Maybe Text)
eevName = lens _eevName (\ s a -> s{_eevName = a})

instance FromJSON ExportedEnvironmentVariable where
        parseJSON
          = withObject "ExportedEnvironmentVariable"
              (\ x ->
                 ExportedEnvironmentVariable' <$>
                   (x .:? "value") <*> (x .:? "name"))

instance Hashable ExportedEnvironmentVariable where

instance NFData ExportedEnvironmentVariable where

-- | Information about the Git submodules configuration for an AWS CodeBuild build project.
--
--
--
-- /See:/ 'gitSubmodulesConfig' smart constructor.
newtype GitSubmodulesConfig =
  GitSubmodulesConfig'
    { _gscFetchSubmodules :: Bool
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'GitSubmodulesConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscFetchSubmodules' - Set to true to fetch Git submodules for your AWS CodeBuild build project.
gitSubmodulesConfig
    :: Bool -- ^ 'gscFetchSubmodules'
    -> GitSubmodulesConfig
gitSubmodulesConfig pFetchSubmodules_ =
  GitSubmodulesConfig' {_gscFetchSubmodules = pFetchSubmodules_}


-- | Set to true to fetch Git submodules for your AWS CodeBuild build project.
gscFetchSubmodules :: Lens' GitSubmodulesConfig Bool
gscFetchSubmodules = lens _gscFetchSubmodules (\ s a -> s{_gscFetchSubmodules = a})

instance FromJSON GitSubmodulesConfig where
        parseJSON
          = withObject "GitSubmodulesConfig"
              (\ x ->
                 GitSubmodulesConfig' <$> (x .: "fetchSubmodules"))

instance Hashable GitSubmodulesConfig where

instance NFData GitSubmodulesConfig where

instance ToJSON GitSubmodulesConfig where
        toJSON GitSubmodulesConfig'{..}
          = object
              (catMaybes
                 [Just ("fetchSubmodules" .= _gscFetchSubmodules)])

-- | Information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both.
--
--
--
-- /See:/ 'logsConfig' smart constructor.
data LogsConfig =
  LogsConfig'
    { _lcS3Logs         :: !(Maybe S3LogsConfig)
    , _lcCloudWatchLogs :: !(Maybe CloudWatchLogsConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcS3Logs' - Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default.
--
-- * 'lcCloudWatchLogs' - Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default.
logsConfig
    :: LogsConfig
logsConfig = LogsConfig' {_lcS3Logs = Nothing, _lcCloudWatchLogs = Nothing}


-- | Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default.
lcS3Logs :: Lens' LogsConfig (Maybe S3LogsConfig)
lcS3Logs = lens _lcS3Logs (\ s a -> s{_lcS3Logs = a})

-- | Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default.
lcCloudWatchLogs :: Lens' LogsConfig (Maybe CloudWatchLogsConfig)
lcCloudWatchLogs = lens _lcCloudWatchLogs (\ s a -> s{_lcCloudWatchLogs = a})

instance FromJSON LogsConfig where
        parseJSON
          = withObject "LogsConfig"
              (\ x ->
                 LogsConfig' <$>
                   (x .:? "s3Logs") <*> (x .:? "cloudWatchLogs"))

instance Hashable LogsConfig where

instance NFData LogsConfig where

instance ToJSON LogsConfig where
        toJSON LogsConfig'{..}
          = object
              (catMaybes
                 [("s3Logs" .=) <$> _lcS3Logs,
                  ("cloudWatchLogs" .=) <$> _lcCloudWatchLogs])

-- | Information about build logs in Amazon CloudWatch Logs.
--
--
--
-- /See:/ 'logsLocation' smart constructor.
data LogsLocation =
  LogsLocation'
    { _llDeepLink          :: !(Maybe Text)
    , _llS3Logs            :: !(Maybe S3LogsConfig)
    , _llCloudWatchLogs    :: !(Maybe CloudWatchLogsConfig)
    , _llS3DeepLink        :: !(Maybe Text)
    , _llS3LogsARN         :: !(Maybe Text)
    , _llCloudWatchLogsARN :: !(Maybe Text)
    , _llGroupName         :: !(Maybe Text)
    , _llStreamName        :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogsLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llDeepLink' - The URL to an individual build log in Amazon CloudWatch Logs.
--
-- * 'llS3Logs' - Information about S3 logs for a build project.
--
-- * 'llCloudWatchLogs' - Information about Amazon CloudWatch Logs for a build project.
--
-- * 'llS3DeepLink' - The URL to a build log in an S3 bucket.
--
-- * 'llS3LogsARN' - The ARN of S3 logs for a build project. Its format is @arn:${Partition}:s3:::${BucketName}/${ObjectName}@ . For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies Resources Defined by Amazon S3> .
--
-- * 'llCloudWatchLogsARN' - The ARN of Amazon CloudWatch Logs for a build project. Its format is @arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}@ . For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies Resources Defined by Amazon CloudWatch Logs> .
--
-- * 'llGroupName' - The name of the Amazon CloudWatch Logs group for the build logs.
--
-- * 'llStreamName' - The name of the Amazon CloudWatch Logs stream for the build logs.
logsLocation
    :: LogsLocation
logsLocation =
  LogsLocation'
    { _llDeepLink = Nothing
    , _llS3Logs = Nothing
    , _llCloudWatchLogs = Nothing
    , _llS3DeepLink = Nothing
    , _llS3LogsARN = Nothing
    , _llCloudWatchLogsARN = Nothing
    , _llGroupName = Nothing
    , _llStreamName = Nothing
    }


-- | The URL to an individual build log in Amazon CloudWatch Logs.
llDeepLink :: Lens' LogsLocation (Maybe Text)
llDeepLink = lens _llDeepLink (\ s a -> s{_llDeepLink = a})

-- | Information about S3 logs for a build project.
llS3Logs :: Lens' LogsLocation (Maybe S3LogsConfig)
llS3Logs = lens _llS3Logs (\ s a -> s{_llS3Logs = a})

-- | Information about Amazon CloudWatch Logs for a build project.
llCloudWatchLogs :: Lens' LogsLocation (Maybe CloudWatchLogsConfig)
llCloudWatchLogs = lens _llCloudWatchLogs (\ s a -> s{_llCloudWatchLogs = a})

-- | The URL to a build log in an S3 bucket.
llS3DeepLink :: Lens' LogsLocation (Maybe Text)
llS3DeepLink = lens _llS3DeepLink (\ s a -> s{_llS3DeepLink = a})

-- | The ARN of S3 logs for a build project. Its format is @arn:${Partition}:s3:::${BucketName}/${ObjectName}@ . For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies Resources Defined by Amazon S3> .
llS3LogsARN :: Lens' LogsLocation (Maybe Text)
llS3LogsARN = lens _llS3LogsARN (\ s a -> s{_llS3LogsARN = a})

-- | The ARN of Amazon CloudWatch Logs for a build project. Its format is @arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}@ . For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies Resources Defined by Amazon CloudWatch Logs> .
llCloudWatchLogsARN :: Lens' LogsLocation (Maybe Text)
llCloudWatchLogsARN = lens _llCloudWatchLogsARN (\ s a -> s{_llCloudWatchLogsARN = a})

-- | The name of the Amazon CloudWatch Logs group for the build logs.
llGroupName :: Lens' LogsLocation (Maybe Text)
llGroupName = lens _llGroupName (\ s a -> s{_llGroupName = a})

-- | The name of the Amazon CloudWatch Logs stream for the build logs.
llStreamName :: Lens' LogsLocation (Maybe Text)
llStreamName = lens _llStreamName (\ s a -> s{_llStreamName = a})

instance FromJSON LogsLocation where
        parseJSON
          = withObject "LogsLocation"
              (\ x ->
                 LogsLocation' <$>
                   (x .:? "deepLink") <*> (x .:? "s3Logs") <*>
                     (x .:? "cloudWatchLogs")
                     <*> (x .:? "s3DeepLink")
                     <*> (x .:? "s3LogsArn")
                     <*> (x .:? "cloudWatchLogsArn")
                     <*> (x .:? "groupName")
                     <*> (x .:? "streamName"))

instance Hashable LogsLocation where

instance NFData LogsLocation where

-- | Describes a network interface.
--
--
--
-- /See:/ 'networkInterface' smart constructor.
data NetworkInterface =
  NetworkInterface'
    { _niSubnetId           :: !(Maybe Text)
    , _niNetworkInterfaceId :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niSubnetId' - The ID of the subnet.
--
-- * 'niNetworkInterfaceId' - The ID of the network interface.
networkInterface
    :: NetworkInterface
networkInterface =
  NetworkInterface' {_niSubnetId = Nothing, _niNetworkInterfaceId = Nothing}


-- | The ID of the subnet.
niSubnetId :: Lens' NetworkInterface (Maybe Text)
niSubnetId = lens _niSubnetId (\ s a -> s{_niSubnetId = a})

-- | The ID of the network interface.
niNetworkInterfaceId :: Lens' NetworkInterface (Maybe Text)
niNetworkInterfaceId = lens _niNetworkInterfaceId (\ s a -> s{_niNetworkInterfaceId = a})

instance FromJSON NetworkInterface where
        parseJSON
          = withObject "NetworkInterface"
              (\ x ->
                 NetworkInterface' <$>
                   (x .:? "subnetId") <*> (x .:? "networkInterfaceId"))

instance Hashable NetworkInterface where

instance NFData NetworkInterface where

-- | Additional information about a build phase that has an error. You can use this information for troubleshooting.
--
--
--
-- /See:/ 'phaseContext' smart constructor.
data PhaseContext =
  PhaseContext'
    { _pcMessage    :: !(Maybe Text)
    , _pcStatusCode :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhaseContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcMessage' - An explanation of the build phase's context. This might include a command ID and an exit code.
--
-- * 'pcStatusCode' - The status code for the context of the build phase.
phaseContext
    :: PhaseContext
phaseContext = PhaseContext' {_pcMessage = Nothing, _pcStatusCode = Nothing}


-- | An explanation of the build phase's context. This might include a command ID and an exit code.
pcMessage :: Lens' PhaseContext (Maybe Text)
pcMessage = lens _pcMessage (\ s a -> s{_pcMessage = a})

-- | The status code for the context of the build phase.
pcStatusCode :: Lens' PhaseContext (Maybe Text)
pcStatusCode = lens _pcStatusCode (\ s a -> s{_pcStatusCode = a})

instance FromJSON PhaseContext where
        parseJSON
          = withObject "PhaseContext"
              (\ x ->
                 PhaseContext' <$>
                   (x .:? "message") <*> (x .:? "statusCode"))

instance Hashable PhaseContext where

instance NFData PhaseContext where

-- | Information about a build project.
--
--
--
-- /See:/ 'project' smart constructor.
data Project =
  Project'
    { _pSecondaryArtifacts      :: !(Maybe [ProjectArtifacts])
    , _pArn                     :: !(Maybe Text)
    , _pArtifacts               :: !(Maybe ProjectArtifacts)
    , _pEnvironment             :: !(Maybe ProjectEnvironment)
    , _pCreated                 :: !(Maybe POSIX)
    , _pSecondarySourceVersions :: !(Maybe [ProjectSourceVersion])
    , _pQueuedTimeoutInMinutes  :: !(Maybe Nat)
    , _pCache                   :: !(Maybe ProjectCache)
    , _pSecondarySources        :: !(Maybe [ProjectSource])
    , _pSourceVersion           :: !(Maybe Text)
    , _pName                    :: !(Maybe Text)
    , _pVpcConfig               :: !(Maybe VPCConfig)
    , _pSource                  :: !(Maybe ProjectSource)
    , _pBadge                   :: !(Maybe ProjectBadge)
    , _pLogsConfig              :: !(Maybe LogsConfig)
    , _pFileSystemLocations     :: !(Maybe [ProjectFileSystemLocation])
    , _pEncryptionKey           :: !(Maybe Text)
    , _pLastModified            :: !(Maybe POSIX)
    , _pWebhook                 :: !(Maybe Webhook)
    , _pDescription             :: !(Maybe Text)
    , _pServiceRole             :: !(Maybe Text)
    , _pTags                    :: !(Maybe [Tag])
    , _pTimeoutInMinutes        :: !(Maybe Nat)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSecondaryArtifacts' - An array of @ProjectArtifacts@ objects.
--
-- * 'pArn' - The Amazon Resource Name (ARN) of the build project.
--
-- * 'pArtifacts' - Information about the build output artifacts for the build project.
--
-- * 'pEnvironment' - Information about the build environment for this build project.
--
-- * 'pCreated' - When the build project was created, expressed in Unix time format.
--
-- * 'pSecondarySourceVersions' - An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take over these @secondarySourceVersions@ (at the project level).
--
-- * 'pQueuedTimeoutInMinutes' - The number of minutes a build is allowed to be queued before it times out.
--
-- * 'pCache' - Information about the cache for the build project.
--
-- * 'pSecondarySources' - An array of @ProjectSource@ objects.
--
-- * 'pSourceVersion' - A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'pName' - The name of the build project.
--
-- * 'pVpcConfig' - Information about the VPC configuration that AWS CodeBuild accesses.
--
-- * 'pSource' - Information about the build input source code for this build project.
--
-- * 'pBadge' - Information about the build badge for the build project.
--
-- * 'pLogsConfig' - Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an S3 bucket, or both.
--
-- * 'pFileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
--
-- * 'pEncryptionKey' - The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias//alias-name/ @ ).
--
-- * 'pLastModified' - When the build project's settings were last modified, expressed in Unix time format.
--
-- * 'pWebhook' - Information about a webhook that connects repository events to a build project in AWS CodeBuild.
--
-- * 'pDescription' - A description that makes the build project easy to identify.
--
-- * 'pServiceRole' - The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
--
-- * 'pTags' - The tags for this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
--
-- * 'pTimeoutInMinutes' - How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.
project
    :: Project
project =
  Project'
    { _pSecondaryArtifacts = Nothing
    , _pArn = Nothing
    , _pArtifacts = Nothing
    , _pEnvironment = Nothing
    , _pCreated = Nothing
    , _pSecondarySourceVersions = Nothing
    , _pQueuedTimeoutInMinutes = Nothing
    , _pCache = Nothing
    , _pSecondarySources = Nothing
    , _pSourceVersion = Nothing
    , _pName = Nothing
    , _pVpcConfig = Nothing
    , _pSource = Nothing
    , _pBadge = Nothing
    , _pLogsConfig = Nothing
    , _pFileSystemLocations = Nothing
    , _pEncryptionKey = Nothing
    , _pLastModified = Nothing
    , _pWebhook = Nothing
    , _pDescription = Nothing
    , _pServiceRole = Nothing
    , _pTags = Nothing
    , _pTimeoutInMinutes = Nothing
    }


-- | An array of @ProjectArtifacts@ objects.
pSecondaryArtifacts :: Lens' Project [ProjectArtifacts]
pSecondaryArtifacts = lens _pSecondaryArtifacts (\ s a -> s{_pSecondaryArtifacts = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the build project.
pArn :: Lens' Project (Maybe Text)
pArn = lens _pArn (\ s a -> s{_pArn = a})

-- | Information about the build output artifacts for the build project.
pArtifacts :: Lens' Project (Maybe ProjectArtifacts)
pArtifacts = lens _pArtifacts (\ s a -> s{_pArtifacts = a})

-- | Information about the build environment for this build project.
pEnvironment :: Lens' Project (Maybe ProjectEnvironment)
pEnvironment = lens _pEnvironment (\ s a -> s{_pEnvironment = a})

-- | When the build project was created, expressed in Unix time format.
pCreated :: Lens' Project (Maybe UTCTime)
pCreated = lens _pCreated (\ s a -> s{_pCreated = a}) . mapping _Time

-- | An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take over these @secondarySourceVersions@ (at the project level).
pSecondarySourceVersions :: Lens' Project [ProjectSourceVersion]
pSecondarySourceVersions = lens _pSecondarySourceVersions (\ s a -> s{_pSecondarySourceVersions = a}) . _Default . _Coerce

-- | The number of minutes a build is allowed to be queued before it times out.
pQueuedTimeoutInMinutes :: Lens' Project (Maybe Natural)
pQueuedTimeoutInMinutes = lens _pQueuedTimeoutInMinutes (\ s a -> s{_pQueuedTimeoutInMinutes = a}) . mapping _Nat

-- | Information about the cache for the build project.
pCache :: Lens' Project (Maybe ProjectCache)
pCache = lens _pCache (\ s a -> s{_pCache = a})

-- | An array of @ProjectSource@ objects.
pSecondarySources :: Lens' Project [ProjectSource]
pSecondarySources = lens _pSecondarySources (\ s a -> s{_pSecondarySources = a}) . _Default . _Coerce

-- | A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
pSourceVersion :: Lens' Project (Maybe Text)
pSourceVersion = lens _pSourceVersion (\ s a -> s{_pSourceVersion = a})

-- | The name of the build project.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Information about the VPC configuration that AWS CodeBuild accesses.
pVpcConfig :: Lens' Project (Maybe VPCConfig)
pVpcConfig = lens _pVpcConfig (\ s a -> s{_pVpcConfig = a})

-- | Information about the build input source code for this build project.
pSource :: Lens' Project (Maybe ProjectSource)
pSource = lens _pSource (\ s a -> s{_pSource = a})

-- | Information about the build badge for the build project.
pBadge :: Lens' Project (Maybe ProjectBadge)
pBadge = lens _pBadge (\ s a -> s{_pBadge = a})

-- | Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an S3 bucket, or both.
pLogsConfig :: Lens' Project (Maybe LogsConfig)
pLogsConfig = lens _pLogsConfig (\ s a -> s{_pLogsConfig = a})

-- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
pFileSystemLocations :: Lens' Project [ProjectFileSystemLocation]
pFileSystemLocations = lens _pFileSystemLocations (\ s a -> s{_pFileSystemLocations = a}) . _Default . _Coerce

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias//alias-name/ @ ).
pEncryptionKey :: Lens' Project (Maybe Text)
pEncryptionKey = lens _pEncryptionKey (\ s a -> s{_pEncryptionKey = a})

-- | When the build project's settings were last modified, expressed in Unix time format.
pLastModified :: Lens' Project (Maybe UTCTime)
pLastModified = lens _pLastModified (\ s a -> s{_pLastModified = a}) . mapping _Time

-- | Information about a webhook that connects repository events to a build project in AWS CodeBuild.
pWebhook :: Lens' Project (Maybe Webhook)
pWebhook = lens _pWebhook (\ s a -> s{_pWebhook = a})

-- | A description that makes the build project easy to identify.
pDescription :: Lens' Project (Maybe Text)
pDescription = lens _pDescription (\ s a -> s{_pDescription = a})

-- | The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
pServiceRole :: Lens' Project (Maybe Text)
pServiceRole = lens _pServiceRole (\ s a -> s{_pServiceRole = a})

-- | The tags for this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
pTags :: Lens' Project [Tag]
pTags = lens _pTags (\ s a -> s{_pTags = a}) . _Default . _Coerce

-- | How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.
pTimeoutInMinutes :: Lens' Project (Maybe Natural)
pTimeoutInMinutes = lens _pTimeoutInMinutes (\ s a -> s{_pTimeoutInMinutes = a}) . mapping _Nat

instance FromJSON Project where
        parseJSON
          = withObject "Project"
              (\ x ->
                 Project' <$>
                   (x .:? "secondaryArtifacts" .!= mempty) <*>
                     (x .:? "arn")
                     <*> (x .:? "artifacts")
                     <*> (x .:? "environment")
                     <*> (x .:? "created")
                     <*> (x .:? "secondarySourceVersions" .!= mempty)
                     <*> (x .:? "queuedTimeoutInMinutes")
                     <*> (x .:? "cache")
                     <*> (x .:? "secondarySources" .!= mempty)
                     <*> (x .:? "sourceVersion")
                     <*> (x .:? "name")
                     <*> (x .:? "vpcConfig")
                     <*> (x .:? "source")
                     <*> (x .:? "badge")
                     <*> (x .:? "logsConfig")
                     <*> (x .:? "fileSystemLocations" .!= mempty)
                     <*> (x .:? "encryptionKey")
                     <*> (x .:? "lastModified")
                     <*> (x .:? "webhook")
                     <*> (x .:? "description")
                     <*> (x .:? "serviceRole")
                     <*> (x .:? "tags" .!= mempty)
                     <*> (x .:? "timeoutInMinutes"))

instance Hashable Project where

instance NFData Project where

-- | Information about the build output artifacts for the build project.
--
--
--
-- /See:/ 'projectArtifacts' smart constructor.
data ProjectArtifacts =
  ProjectArtifacts'
    { _paPackaging            :: !(Maybe ArtifactPackaging)
    , _paPath                 :: !(Maybe Text)
    , _paLocation             :: !(Maybe Text)
    , _paName                 :: !(Maybe Text)
    , _paEncryptionDisabled   :: !(Maybe Bool)
    , _paOverrideArtifactName :: !(Maybe Bool)
    , _paArtifactIdentifier   :: !(Maybe Text)
    , _paNamespaceType        :: !(Maybe ArtifactNamespace)
    , _paType                 :: !ArtifactsType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paPackaging' - The type of build output artifact to create:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , valid values include:     * @NONE@ : AWS CodeBuild creates in the output bucket a folder that contains the build output. This is the default if @packaging@ is not specified.     * @ZIP@ : AWS CodeBuild creates in the output bucket a ZIP file that contains the build output.
--
-- * 'paPath' - Along with @namespaceType@ and @name@ , the pattern that AWS CodeBuild uses to name and store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the path to the output artifact. If @path@ is not specified, @path@ is not used. For example, if @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @NONE@ , and @name@ is set to @MyArtifact.zip@ , the output artifact is stored in the output bucket at @MyArtifacts/MyArtifact.zip@ .
--
-- * 'paLocation' - Information about the build output artifact location:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the name of the output bucket.
--
-- * 'paName' - Along with @path@ and @namespaceType@ , the pattern that AWS CodeBuild uses to name and store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the name of the output artifact object. If you set the name to be a forward slash ("/"), the artifact is stored in the root of the output bucket. For example:     * If @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to @MyArtifact.zip@ , then the output artifact is stored in @MyArtifacts//build-ID/ /MyArtifact.zip@ .      * If @path@ is empty, @namespaceType@ is set to @NONE@ , and @name@ is set to "@/@ ", the output artifact is stored in the root of the output bucket.      * If @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to "@/@ ", the output artifact is stored in @MyArtifacts//build-ID/ @ .
--
-- * 'paEncryptionDisabled' - Set to true if you do not want your output artifacts encrypted. This option is valid only if your artifacts type is Amazon Simple Storage Service (Amazon S3). If this is set with another artifacts type, an invalidInputException is thrown.
--
-- * 'paOverrideArtifactName' - If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique.
--
-- * 'paArtifactIdentifier' - An identifier for this artifact definition.
--
-- * 'paNamespaceType' - Along with @path@ and @name@ , the pattern that AWS CodeBuild uses to determine the name and location to store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , valid values include:     * @BUILD_ID@ : Include the build ID in the location of the build output artifact.     * @NONE@ : Do not include the build ID. This is the default if @namespaceType@ is not specified. For example, if @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to @MyArtifact.zip@ , the output artifact is stored in @MyArtifacts//build-ID/ /MyArtifact.zip@ .
--
-- * 'paType' - The type of build output artifact. Valid values include:     * @CODEPIPELINE@ : The build project has build output generated through AWS CodePipeline.      * @NO_ARTIFACTS@ : The build project does not produce any build output.     * @S3@ : The build project stores build output in Amazon Simple Storage Service (Amazon S3).
projectArtifacts
    :: ArtifactsType -- ^ 'paType'
    -> ProjectArtifacts
projectArtifacts pType_ =
  ProjectArtifacts'
    { _paPackaging = Nothing
    , _paPath = Nothing
    , _paLocation = Nothing
    , _paName = Nothing
    , _paEncryptionDisabled = Nothing
    , _paOverrideArtifactName = Nothing
    , _paArtifactIdentifier = Nothing
    , _paNamespaceType = Nothing
    , _paType = pType_
    }


-- | The type of build output artifact to create:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output artifacts instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , valid values include:     * @NONE@ : AWS CodeBuild creates in the output bucket a folder that contains the build output. This is the default if @packaging@ is not specified.     * @ZIP@ : AWS CodeBuild creates in the output bucket a ZIP file that contains the build output.
paPackaging :: Lens' ProjectArtifacts (Maybe ArtifactPackaging)
paPackaging = lens _paPackaging (\ s a -> s{_paPackaging = a})

-- | Along with @namespaceType@ and @name@ , the pattern that AWS CodeBuild uses to name and store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the path to the output artifact. If @path@ is not specified, @path@ is not used. For example, if @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @NONE@ , and @name@ is set to @MyArtifact.zip@ , the output artifact is stored in the output bucket at @MyArtifacts/MyArtifact.zip@ .
paPath :: Lens' ProjectArtifacts (Maybe Text)
paPath = lens _paPath (\ s a -> s{_paPath = a})

-- | Information about the build output artifact location:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output locations instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the name of the output bucket.
paLocation :: Lens' ProjectArtifacts (Maybe Text)
paLocation = lens _paLocation (\ s a -> s{_paLocation = a})

-- | Along with @path@ and @namespaceType@ , the pattern that AWS CodeBuild uses to name and store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , this is the name of the output artifact object. If you set the name to be a forward slash ("/"), the artifact is stored in the root of the output bucket. For example:     * If @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to @MyArtifact.zip@ , then the output artifact is stored in @MyArtifacts//build-ID/ /MyArtifact.zip@ .      * If @path@ is empty, @namespaceType@ is set to @NONE@ , and @name@ is set to "@/@ ", the output artifact is stored in the root of the output bucket.      * If @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to "@/@ ", the output artifact is stored in @MyArtifacts//build-ID/ @ .
paName :: Lens' ProjectArtifacts (Maybe Text)
paName = lens _paName (\ s a -> s{_paName = a})

-- | Set to true if you do not want your output artifacts encrypted. This option is valid only if your artifacts type is Amazon Simple Storage Service (Amazon S3). If this is set with another artifacts type, an invalidInputException is thrown.
paEncryptionDisabled :: Lens' ProjectArtifacts (Maybe Bool)
paEncryptionDisabled = lens _paEncryptionDisabled (\ s a -> s{_paEncryptionDisabled = a})

-- | If this flag is set, a name specified in the buildspec file overrides the artifact name. The name specified in a buildspec file is calculated at build time and uses the Shell Command Language. For example, you can append a date and time to your artifact name so that it is always unique.
paOverrideArtifactName :: Lens' ProjectArtifacts (Maybe Bool)
paOverrideArtifactName = lens _paOverrideArtifactName (\ s a -> s{_paOverrideArtifactName = a})

-- | An identifier for this artifact definition.
paArtifactIdentifier :: Lens' ProjectArtifacts (Maybe Text)
paArtifactIdentifier = lens _paArtifactIdentifier (\ s a -> s{_paArtifactIdentifier = a})

-- | Along with @path@ and @name@ , the pattern that AWS CodeBuild uses to determine the name and location to store the output artifact:     * If @type@ is set to @CODEPIPELINE@ , AWS CodePipeline ignores this value if specified. This is because AWS CodePipeline manages its build output names instead of AWS CodeBuild.     * If @type@ is set to @NO_ARTIFACTS@ , this value is ignored if specified, because no build output is produced.     * If @type@ is set to @S3@ , valid values include:     * @BUILD_ID@ : Include the build ID in the location of the build output artifact.     * @NONE@ : Do not include the build ID. This is the default if @namespaceType@ is not specified. For example, if @path@ is set to @MyArtifacts@ , @namespaceType@ is set to @BUILD_ID@ , and @name@ is set to @MyArtifact.zip@ , the output artifact is stored in @MyArtifacts//build-ID/ /MyArtifact.zip@ .
paNamespaceType :: Lens' ProjectArtifacts (Maybe ArtifactNamespace)
paNamespaceType = lens _paNamespaceType (\ s a -> s{_paNamespaceType = a})

-- | The type of build output artifact. Valid values include:     * @CODEPIPELINE@ : The build project has build output generated through AWS CodePipeline.      * @NO_ARTIFACTS@ : The build project does not produce any build output.     * @S3@ : The build project stores build output in Amazon Simple Storage Service (Amazon S3).
paType :: Lens' ProjectArtifacts ArtifactsType
paType = lens _paType (\ s a -> s{_paType = a})

instance FromJSON ProjectArtifacts where
        parseJSON
          = withObject "ProjectArtifacts"
              (\ x ->
                 ProjectArtifacts' <$>
                   (x .:? "packaging") <*> (x .:? "path") <*>
                     (x .:? "location")
                     <*> (x .:? "name")
                     <*> (x .:? "encryptionDisabled")
                     <*> (x .:? "overrideArtifactName")
                     <*> (x .:? "artifactIdentifier")
                     <*> (x .:? "namespaceType")
                     <*> (x .: "type"))

instance Hashable ProjectArtifacts where

instance NFData ProjectArtifacts where

instance ToJSON ProjectArtifacts where
        toJSON ProjectArtifacts'{..}
          = object
              (catMaybes
                 [("packaging" .=) <$> _paPackaging,
                  ("path" .=) <$> _paPath,
                  ("location" .=) <$> _paLocation,
                  ("name" .=) <$> _paName,
                  ("encryptionDisabled" .=) <$> _paEncryptionDisabled,
                  ("overrideArtifactName" .=) <$>
                    _paOverrideArtifactName,
                  ("artifactIdentifier" .=) <$> _paArtifactIdentifier,
                  ("namespaceType" .=) <$> _paNamespaceType,
                  Just ("type" .= _paType)])

-- | Information about the build badge for the build project.
--
--
--
-- /See:/ 'projectBadge' smart constructor.
data ProjectBadge =
  ProjectBadge'
    { _pbBadgeEnabled    :: !(Maybe Bool)
    , _pbBadgeRequestURL :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectBadge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbBadgeEnabled' - Set this to true to generate a publicly accessible URL for your project's build badge.
--
-- * 'pbBadgeRequestURL' - The publicly-accessible URL through which you can access the build badge for your project.  The publicly accessible URL through which you can access the build badge for your project.
projectBadge
    :: ProjectBadge
projectBadge =
  ProjectBadge' {_pbBadgeEnabled = Nothing, _pbBadgeRequestURL = Nothing}


-- | Set this to true to generate a publicly accessible URL for your project's build badge.
pbBadgeEnabled :: Lens' ProjectBadge (Maybe Bool)
pbBadgeEnabled = lens _pbBadgeEnabled (\ s a -> s{_pbBadgeEnabled = a})

-- | The publicly-accessible URL through which you can access the build badge for your project.  The publicly accessible URL through which you can access the build badge for your project.
pbBadgeRequestURL :: Lens' ProjectBadge (Maybe Text)
pbBadgeRequestURL = lens _pbBadgeRequestURL (\ s a -> s{_pbBadgeRequestURL = a})

instance FromJSON ProjectBadge where
        parseJSON
          = withObject "ProjectBadge"
              (\ x ->
                 ProjectBadge' <$>
                   (x .:? "badgeEnabled") <*> (x .:? "badgeRequestUrl"))

instance Hashable ProjectBadge where

instance NFData ProjectBadge where

-- | Information about the cache for the build project.
--
--
--
-- /See:/ 'projectCache' smart constructor.
data ProjectCache =
  ProjectCache'
    { _pcLocation :: !(Maybe Text)
    , _pcModes    :: !(Maybe [CacheMode])
    , _pcType     :: !CacheType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcLocation' - Information about the cache location:      * @NO_CACHE@ or @LOCAL@ : This value is ignored.     * @S3@ : This is the S3 bucket name/prefix.
--
-- * 'pcModes' - If you use a @LOCAL@ cache, the local cache mode. You can use one or more local cache modes at the same time.      * @LOCAL_SOURCE_CACHE@ mode caches Git metadata for primary and secondary sources. After the cache is created, subsequent builds pull only the change between commits. This mode is a good choice for projects with a clean working directory and a source that is a large Git repository. If you choose this option and your project does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the option is ignored.      * @LOCAL_DOCKER_LAYER_CACHE@ mode caches existing Docker layers. This mode is a good choice for projects that build or pull large Docker images. It can prevent the performance issues caused by pulling large Docker images down from the network.      * @LOCAL_CUSTOM_CACHE@ mode caches directories you specify in the buildspec file. This mode is a good choice if your build scenario is not suited to one of the other three local cache modes. If you use a custom cache:      * Only directories can be specified for caching. You cannot specify individual files.      * Symlinks are used to reference cached directories.      * Cached directories are linked to your build before it downloads its project sources. Cached items are overridden if a source item has the same name. Directories are specified using cache paths in the buildspec file.
--
-- * 'pcType' - The type of cache used by the build project. Valid values include:     * @NO_CACHE@ : The build project does not use any cache.     * @S3@ : The build project reads and writes from and to S3.     * @LOCAL@ : The build project stores a cache locally on a build host that is only available to that build host.
projectCache
    :: CacheType -- ^ 'pcType'
    -> ProjectCache
projectCache pType_ =
  ProjectCache' {_pcLocation = Nothing, _pcModes = Nothing, _pcType = pType_}


-- | Information about the cache location:      * @NO_CACHE@ or @LOCAL@ : This value is ignored.     * @S3@ : This is the S3 bucket name/prefix.
pcLocation :: Lens' ProjectCache (Maybe Text)
pcLocation = lens _pcLocation (\ s a -> s{_pcLocation = a})

-- | If you use a @LOCAL@ cache, the local cache mode. You can use one or more local cache modes at the same time.      * @LOCAL_SOURCE_CACHE@ mode caches Git metadata for primary and secondary sources. After the cache is created, subsequent builds pull only the change between commits. This mode is a good choice for projects with a clean working directory and a source that is a large Git repository. If you choose this option and your project does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the option is ignored.      * @LOCAL_DOCKER_LAYER_CACHE@ mode caches existing Docker layers. This mode is a good choice for projects that build or pull large Docker images. It can prevent the performance issues caused by pulling large Docker images down from the network.      * @LOCAL_CUSTOM_CACHE@ mode caches directories you specify in the buildspec file. This mode is a good choice if your build scenario is not suited to one of the other three local cache modes. If you use a custom cache:      * Only directories can be specified for caching. You cannot specify individual files.      * Symlinks are used to reference cached directories.      * Cached directories are linked to your build before it downloads its project sources. Cached items are overridden if a source item has the same name. Directories are specified using cache paths in the buildspec file.
pcModes :: Lens' ProjectCache [CacheMode]
pcModes = lens _pcModes (\ s a -> s{_pcModes = a}) . _Default . _Coerce

-- | The type of cache used by the build project. Valid values include:     * @NO_CACHE@ : The build project does not use any cache.     * @S3@ : The build project reads and writes from and to S3.     * @LOCAL@ : The build project stores a cache locally on a build host that is only available to that build host.
pcType :: Lens' ProjectCache CacheType
pcType = lens _pcType (\ s a -> s{_pcType = a})

instance FromJSON ProjectCache where
        parseJSON
          = withObject "ProjectCache"
              (\ x ->
                 ProjectCache' <$>
                   (x .:? "location") <*> (x .:? "modes" .!= mempty) <*>
                     (x .: "type"))

instance Hashable ProjectCache where

instance NFData ProjectCache where

instance ToJSON ProjectCache where
        toJSON ProjectCache'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _pcLocation,
                  ("modes" .=) <$> _pcModes, Just ("type" .= _pcType)])

-- | Information about the build environment of the build project.
--
--
--
-- /See:/ 'projectEnvironment' smart constructor.
data ProjectEnvironment =
  ProjectEnvironment'
    { _peImagePullCredentialsType :: !(Maybe ImagePullCredentialsType)
    , _pePrivilegedMode           :: !(Maybe Bool)
    , _peRegistryCredential       :: !(Maybe RegistryCredential)
    , _peCertificate              :: !(Maybe Text)
    , _peEnvironmentVariables     :: !(Maybe [EnvironmentVariable])
    , _peType                     :: !EnvironmentType
    , _peImage                    :: !Text
    , _peComputeType              :: !ComputeType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peImagePullCredentialsType' - The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values:      * @CODEBUILD@ specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.      * @SERVICE_ROLE@ specifies that AWS CodeBuild uses your build project's service role.  When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials.
--
-- * 'pePrivilegedMode' - Enables running the Docker daemon inside a Docker container. Set to true only if the build project is used to build Docker images. Otherwise, a build that attempts to interact with the Docker daemon fails. The default setting is @false@ . You can initialize the Docker daemon during the install phase of your build by adding one of the following sets of commands to the install phase of your buildspec file: If the operating system's base image is Ubuntu Linux: @- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&@  @- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"@  If the operating system's base image is Alpine Linux and the previous command does not work, add the @-t@ argument to @timeout@ : @- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&@  @- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"@
--
-- * 'peRegistryCredential' - The credentials for access to a private registry.
--
-- * 'peCertificate' - The certificate to use with this build project.
--
-- * 'peEnvironmentVariables' - A set of environment variables to make available to builds for this build project.
--
-- * 'peType' - The type of build environment to use for related builds.     * The environment type @ARM_CONTAINER@ is available only in regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and EU (Frankfurt).     * The environment type @LINUX_CONTAINER@ with compute type @build.general1.2xlarge@ is available only in regions US East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and China (Ningxia).     * The environment type @LINUX_GPU_CONTAINER@ is available only in regions US East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney) , China (Beijing), and China (Ningxia).
--
-- * 'peImage' - The image tag or image digest that identifies the Docker image to use for this build project. Use the following formats:     * For an image tag: @registry/repository:tag@ . For example, to specify an image with the tag "latest," use @registry/repository:latest@ .     * For an image digest: @registry/repository@digest@ . For example, to specify an image with the digest "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use @registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf@ .
--
-- * 'peComputeType' - Information about the compute resources the build project uses. Available values include:     * @BUILD_GENERAL1_SMALL@ : Use up to 3 GB memory and 2 vCPUs for builds.     * @BUILD_GENERAL1_MEDIUM@ : Use up to 7 GB memory and 4 vCPUs for builds.     * @BUILD_GENERAL1_LARGE@ : Use up to 16 GB memory and 8 vCPUs for builds, depending on your environment type.     * @BUILD_GENERAL1_2XLARGE@ : Use up to 145 GB memory, 72 vCPUs, and 824 GB of SSD storage for builds. This compute type supports Docker images up to 100 GB uncompressed. If you use @BUILD_GENERAL1_LARGE@ :      * For environment type @LINUX_CONTAINER@ , you can use up to 15 GB memory and 8 vCPUs for builds.      * For environment type @LINUX_GPU_CONTAINER@ , you can use up to 255 GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.     * For environment type @ARM_CONTAINER@ , you can use up to 16 GB memory and 8 vCPUs on ARM-based processors for builds. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html Build Environment Compute Types> in the /AWS CodeBuild User Guide./
projectEnvironment
    :: EnvironmentType -- ^ 'peType'
    -> Text -- ^ 'peImage'
    -> ComputeType -- ^ 'peComputeType'
    -> ProjectEnvironment
projectEnvironment pType_ pImage_ pComputeType_ =
  ProjectEnvironment'
    { _peImagePullCredentialsType = Nothing
    , _pePrivilegedMode = Nothing
    , _peRegistryCredential = Nothing
    , _peCertificate = Nothing
    , _peEnvironmentVariables = Nothing
    , _peType = pType_
    , _peImage = pImage_
    , _peComputeType = pComputeType_
    }


-- | The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values:      * @CODEBUILD@ specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.      * @SERVICE_ROLE@ specifies that AWS CodeBuild uses your build project's service role.  When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CODEBUILD credentials.
peImagePullCredentialsType :: Lens' ProjectEnvironment (Maybe ImagePullCredentialsType)
peImagePullCredentialsType = lens _peImagePullCredentialsType (\ s a -> s{_peImagePullCredentialsType = a})

-- | Enables running the Docker daemon inside a Docker container. Set to true only if the build project is used to build Docker images. Otherwise, a build that attempts to interact with the Docker daemon fails. The default setting is @false@ . You can initialize the Docker daemon during the install phase of your build by adding one of the following sets of commands to the install phase of your buildspec file: If the operating system's base image is Ubuntu Linux: @- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&@  @- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"@  If the operating system's base image is Alpine Linux and the previous command does not work, add the @-t@ argument to @timeout@ : @- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&@  @- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"@
pePrivilegedMode :: Lens' ProjectEnvironment (Maybe Bool)
pePrivilegedMode = lens _pePrivilegedMode (\ s a -> s{_pePrivilegedMode = a})

-- | The credentials for access to a private registry.
peRegistryCredential :: Lens' ProjectEnvironment (Maybe RegistryCredential)
peRegistryCredential = lens _peRegistryCredential (\ s a -> s{_peRegistryCredential = a})

-- | The certificate to use with this build project.
peCertificate :: Lens' ProjectEnvironment (Maybe Text)
peCertificate = lens _peCertificate (\ s a -> s{_peCertificate = a})

-- | A set of environment variables to make available to builds for this build project.
peEnvironmentVariables :: Lens' ProjectEnvironment [EnvironmentVariable]
peEnvironmentVariables = lens _peEnvironmentVariables (\ s a -> s{_peEnvironmentVariables = a}) . _Default . _Coerce

-- | The type of build environment to use for related builds.     * The environment type @ARM_CONTAINER@ is available only in regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and EU (Frankfurt).     * The environment type @LINUX_CONTAINER@ with compute type @build.general1.2xlarge@ is available only in regions US East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and China (Ningxia).     * The environment type @LINUX_GPU_CONTAINER@ is available only in regions US East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney) , China (Beijing), and China (Ningxia).
peType :: Lens' ProjectEnvironment EnvironmentType
peType = lens _peType (\ s a -> s{_peType = a})

-- | The image tag or image digest that identifies the Docker image to use for this build project. Use the following formats:     * For an image tag: @registry/repository:tag@ . For example, to specify an image with the tag "latest," use @registry/repository:latest@ .     * For an image digest: @registry/repository@digest@ . For example, to specify an image with the digest "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use @registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf@ .
peImage :: Lens' ProjectEnvironment Text
peImage = lens _peImage (\ s a -> s{_peImage = a})

-- | Information about the compute resources the build project uses. Available values include:     * @BUILD_GENERAL1_SMALL@ : Use up to 3 GB memory and 2 vCPUs for builds.     * @BUILD_GENERAL1_MEDIUM@ : Use up to 7 GB memory and 4 vCPUs for builds.     * @BUILD_GENERAL1_LARGE@ : Use up to 16 GB memory and 8 vCPUs for builds, depending on your environment type.     * @BUILD_GENERAL1_2XLARGE@ : Use up to 145 GB memory, 72 vCPUs, and 824 GB of SSD storage for builds. This compute type supports Docker images up to 100 GB uncompressed. If you use @BUILD_GENERAL1_LARGE@ :      * For environment type @LINUX_CONTAINER@ , you can use up to 15 GB memory and 8 vCPUs for builds.      * For environment type @LINUX_GPU_CONTAINER@ , you can use up to 255 GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.     * For environment type @ARM_CONTAINER@ , you can use up to 16 GB memory and 8 vCPUs on ARM-based processors for builds. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html Build Environment Compute Types> in the /AWS CodeBuild User Guide./
peComputeType :: Lens' ProjectEnvironment ComputeType
peComputeType = lens _peComputeType (\ s a -> s{_peComputeType = a})

instance FromJSON ProjectEnvironment where
        parseJSON
          = withObject "ProjectEnvironment"
              (\ x ->
                 ProjectEnvironment' <$>
                   (x .:? "imagePullCredentialsType") <*>
                     (x .:? "privilegedMode")
                     <*> (x .:? "registryCredential")
                     <*> (x .:? "certificate")
                     <*> (x .:? "environmentVariables" .!= mempty)
                     <*> (x .: "type")
                     <*> (x .: "image")
                     <*> (x .: "computeType"))

instance Hashable ProjectEnvironment where

instance NFData ProjectEnvironment where

instance ToJSON ProjectEnvironment where
        toJSON ProjectEnvironment'{..}
          = object
              (catMaybes
                 [("imagePullCredentialsType" .=) <$>
                    _peImagePullCredentialsType,
                  ("privilegedMode" .=) <$> _pePrivilegedMode,
                  ("registryCredential" .=) <$> _peRegistryCredential,
                  ("certificate" .=) <$> _peCertificate,
                  ("environmentVariables" .=) <$>
                    _peEnvironmentVariables,
                  Just ("type" .= _peType), Just ("image" .= _peImage),
                  Just ("computeType" .= _peComputeType)])

-- | Information about a file system created by Amazon Elastic File System (EFS). For more information, see <https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html What Is Amazon Elastic File System?>
--
--
--
-- /See:/ 'projectFileSystemLocation' smart constructor.
data ProjectFileSystemLocation =
  ProjectFileSystemLocation'
    { _pfslLocation     :: !(Maybe Text)
    , _pfslIdentifier   :: !(Maybe Text)
    , _pfslMountOptions :: !(Maybe Text)
    , _pfslType         :: !(Maybe FileSystemType)
    , _pfslMountPoint   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectFileSystemLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfslLocation' - A string that specifies the location of the file system created by Amazon EFS. Its format is @efs-dns-name:/directory-path@ . You can find the DNS name of file system when you view it in the AWS EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is @fs-abcd1234.efs.us-west-2.amazonaws.com@ , and its mount directory is @my-efs-mount-directory@ , then the @location@ is @fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory@ .  The directory path in the format @efs-dns-name:/directory-path@ is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system.
--
-- * 'pfslIdentifier' - The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the @identifier@ in all capital letters to @CODEBUILD_@ . For example, if you specify @my-efs@ for @identifier@ , a new environment variable is create named @CODEBUILD_MY-EFS@ .  The @identifier@ is used to mount your file system.
--
-- * 'pfslMountOptions' - The mount options for a file system created by AWS EFS. The default mount options used by CodeBuild are @nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2@ . For more information, see <https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html Recommended NFS Mount Options> .
--
-- * 'pfslType' - The type of the file system. The one supported type is @EFS@ .
--
-- * 'pfslMountPoint' - The location in the container where you mount the file system.
projectFileSystemLocation
    :: ProjectFileSystemLocation
projectFileSystemLocation =
  ProjectFileSystemLocation'
    { _pfslLocation = Nothing
    , _pfslIdentifier = Nothing
    , _pfslMountOptions = Nothing
    , _pfslType = Nothing
    , _pfslMountPoint = Nothing
    }


-- | A string that specifies the location of the file system created by Amazon EFS. Its format is @efs-dns-name:/directory-path@ . You can find the DNS name of file system when you view it in the AWS EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is @fs-abcd1234.efs.us-west-2.amazonaws.com@ , and its mount directory is @my-efs-mount-directory@ , then the @location@ is @fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory@ .  The directory path in the format @efs-dns-name:/directory-path@ is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system.
pfslLocation :: Lens' ProjectFileSystemLocation (Maybe Text)
pfslLocation = lens _pfslLocation (\ s a -> s{_pfslLocation = a})

-- | The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the @identifier@ in all capital letters to @CODEBUILD_@ . For example, if you specify @my-efs@ for @identifier@ , a new environment variable is create named @CODEBUILD_MY-EFS@ .  The @identifier@ is used to mount your file system.
pfslIdentifier :: Lens' ProjectFileSystemLocation (Maybe Text)
pfslIdentifier = lens _pfslIdentifier (\ s a -> s{_pfslIdentifier = a})

-- | The mount options for a file system created by AWS EFS. The default mount options used by CodeBuild are @nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2@ . For more information, see <https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html Recommended NFS Mount Options> .
pfslMountOptions :: Lens' ProjectFileSystemLocation (Maybe Text)
pfslMountOptions = lens _pfslMountOptions (\ s a -> s{_pfslMountOptions = a})

-- | The type of the file system. The one supported type is @EFS@ .
pfslType :: Lens' ProjectFileSystemLocation (Maybe FileSystemType)
pfslType = lens _pfslType (\ s a -> s{_pfslType = a})

-- | The location in the container where you mount the file system.
pfslMountPoint :: Lens' ProjectFileSystemLocation (Maybe Text)
pfslMountPoint = lens _pfslMountPoint (\ s a -> s{_pfslMountPoint = a})

instance FromJSON ProjectFileSystemLocation where
        parseJSON
          = withObject "ProjectFileSystemLocation"
              (\ x ->
                 ProjectFileSystemLocation' <$>
                   (x .:? "location") <*> (x .:? "identifier") <*>
                     (x .:? "mountOptions")
                     <*> (x .:? "type")
                     <*> (x .:? "mountPoint"))

instance Hashable ProjectFileSystemLocation where

instance NFData ProjectFileSystemLocation where

instance ToJSON ProjectFileSystemLocation where
        toJSON ProjectFileSystemLocation'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _pfslLocation,
                  ("identifier" .=) <$> _pfslIdentifier,
                  ("mountOptions" .=) <$> _pfslMountOptions,
                  ("type" .=) <$> _pfslType,
                  ("mountPoint" .=) <$> _pfslMountPoint])

-- | Information about the build input source code for the build project.
--
--
--
-- /See:/ 'projectSource' smart constructor.
data ProjectSource =
  ProjectSource'
    { _psReportBuildStatus   :: !(Maybe Bool)
    , _psInsecureSSL         :: !(Maybe Bool)
    , _psLocation            :: !(Maybe Text)
    , _psAuth                :: !(Maybe SourceAuth)
    , _psBuildspec           :: !(Maybe Text)
    , _psSourceIdentifier    :: !(Maybe Text)
    , _psGitCloneDepth       :: !(Maybe Nat)
    , _psGitSubmodulesConfig :: !(Maybe GitSubmodulesConfig)
    , _psType                :: !SourceType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psReportBuildStatus' - Set to true to report the status of a build's start and finish to your source provider. This option is valid only when your source provider is GitHub, GitHub Enterprise, or Bitbucket. If this is set and you use a different source provider, an invalidInputException is thrown.
--
-- * 'psInsecureSSL' - Enable this flag to ignore SSL warnings while connecting to the project source code.
--
-- * 'psLocation' - Information about the location of the source code to be built. Valid values include:     * For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, @location@ should not be specified. If it is specified, AWS CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.     * For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the buildspec file (for example, @https://git-codecommit./region-ID/ .amazonaws.com/v1/repos//repo-name/ @ ).     * For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, one of the following.      * The path to the ZIP file that contains the source code (for example, @/bucket-name/ //path/ //to/ //object-name/ .zip@ ).      * The path to the folder that contains the source code (for example, @/bucket-name/ //path/ //to/ //source-code/ //folder/ /@ ).      * For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your GitHub account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub __Authorize application__ page, for __Organization access__ , choose __Request access__ next to each repository you want to allow AWS CodeBuild to have access to, and then choose __Authorize application__ . (After you have connected to your GitHub account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the @source@ object, set the @auth@ object's @type@ value to @OAUTH@ .     * For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your Bitbucket account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with Bitbucket, on the Bitbucket __Confirm access to your account__ page, choose __Grant access__ . (After you have connected to your Bitbucket account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the @source@ object, set the @auth@ object's @type@ value to @OAUTH@ .
--
-- * 'psAuth' - Information about the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.
--
-- * 'psBuildspec' - The buildspec file declaration to use for the builds in this build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
--
-- * 'psSourceIdentifier' - An identifier for this project source.
--
-- * 'psGitCloneDepth' - Information about the Git clone depth for the build project.
--
-- * 'psGitSubmodulesConfig' - Information about the Git submodules configuration for the build project.
--
-- * 'psType' - The type of repository that contains the source code to be built. Valid values include:     * @BITBUCKET@ : The source code is in a Bitbucket repository.     * @CODECOMMIT@ : The source code is in an AWS CodeCommit repository.     * @CODEPIPELINE@ : The source code settings are specified in the source action of a pipeline in AWS CodePipeline.     * @GITHUB@ : The source code is in a GitHub repository.     * @GITHUB_ENTERPRISE@ : The source code is in a GitHub Enterprise repository.     * @NO_SOURCE@ : The project does not have input source code.     * @S3@ : The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.
projectSource
    :: SourceType -- ^ 'psType'
    -> ProjectSource
projectSource pType_ =
  ProjectSource'
    { _psReportBuildStatus = Nothing
    , _psInsecureSSL = Nothing
    , _psLocation = Nothing
    , _psAuth = Nothing
    , _psBuildspec = Nothing
    , _psSourceIdentifier = Nothing
    , _psGitCloneDepth = Nothing
    , _psGitSubmodulesConfig = Nothing
    , _psType = pType_
    }


-- | Set to true to report the status of a build's start and finish to your source provider. This option is valid only when your source provider is GitHub, GitHub Enterprise, or Bitbucket. If this is set and you use a different source provider, an invalidInputException is thrown.
psReportBuildStatus :: Lens' ProjectSource (Maybe Bool)
psReportBuildStatus = lens _psReportBuildStatus (\ s a -> s{_psReportBuildStatus = a})

-- | Enable this flag to ignore SSL warnings while connecting to the project source code.
psInsecureSSL :: Lens' ProjectSource (Maybe Bool)
psInsecureSSL = lens _psInsecureSSL (\ s a -> s{_psInsecureSSL = a})

-- | Information about the location of the source code to be built. Valid values include:     * For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, @location@ should not be specified. If it is specified, AWS CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.     * For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the buildspec file (for example, @https://git-codecommit./region-ID/ .amazonaws.com/v1/repos//repo-name/ @ ).     * For source code in an Amazon Simple Storage Service (Amazon S3) input bucket, one of the following.      * The path to the ZIP file that contains the source code (for example, @/bucket-name/ //path/ //to/ //object-name/ .zip@ ).      * The path to the folder that contains the source code (for example, @/bucket-name/ //path/ //to/ //source-code/ //folder/ /@ ).      * For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your GitHub account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with GitHub, on the GitHub __Authorize application__ page, for __Organization access__ , choose __Request access__ next to each repository you want to allow AWS CodeBuild to have access to, and then choose __Authorize application__ . (After you have connected to your GitHub account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the @source@ object, set the @auth@ object's @type@ value to @OAUTH@ .     * For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the buildspec file. You must connect your AWS account to your Bitbucket account. Use the AWS CodeBuild console to start creating a build project. When you use the console to connect (or reconnect) with Bitbucket, on the Bitbucket __Confirm access to your account__ page, choose __Grant access__ . (After you have connected to your Bitbucket account, you do not need to finish creating the build project. You can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use this connection, in the @source@ object, set the @auth@ object's @type@ value to @OAUTH@ .
psLocation :: Lens' ProjectSource (Maybe Text)
psLocation = lens _psLocation (\ s a -> s{_psLocation = a})

-- | Information about the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.
psAuth :: Lens' ProjectSource (Maybe SourceAuth)
psAuth = lens _psAuth (\ s a -> s{_psAuth = a})

-- | The buildspec file declaration to use for the builds in this build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
psBuildspec :: Lens' ProjectSource (Maybe Text)
psBuildspec = lens _psBuildspec (\ s a -> s{_psBuildspec = a})

-- | An identifier for this project source.
psSourceIdentifier :: Lens' ProjectSource (Maybe Text)
psSourceIdentifier = lens _psSourceIdentifier (\ s a -> s{_psSourceIdentifier = a})

-- | Information about the Git clone depth for the build project.
psGitCloneDepth :: Lens' ProjectSource (Maybe Natural)
psGitCloneDepth = lens _psGitCloneDepth (\ s a -> s{_psGitCloneDepth = a}) . mapping _Nat

-- | Information about the Git submodules configuration for the build project.
psGitSubmodulesConfig :: Lens' ProjectSource (Maybe GitSubmodulesConfig)
psGitSubmodulesConfig = lens _psGitSubmodulesConfig (\ s a -> s{_psGitSubmodulesConfig = a})

-- | The type of repository that contains the source code to be built. Valid values include:     * @BITBUCKET@ : The source code is in a Bitbucket repository.     * @CODECOMMIT@ : The source code is in an AWS CodeCommit repository.     * @CODEPIPELINE@ : The source code settings are specified in the source action of a pipeline in AWS CodePipeline.     * @GITHUB@ : The source code is in a GitHub repository.     * @GITHUB_ENTERPRISE@ : The source code is in a GitHub Enterprise repository.     * @NO_SOURCE@ : The project does not have input source code.     * @S3@ : The source code is in an Amazon Simple Storage Service (Amazon S3) input bucket.
psType :: Lens' ProjectSource SourceType
psType = lens _psType (\ s a -> s{_psType = a})

instance FromJSON ProjectSource where
        parseJSON
          = withObject "ProjectSource"
              (\ x ->
                 ProjectSource' <$>
                   (x .:? "reportBuildStatus") <*> (x .:? "insecureSsl")
                     <*> (x .:? "location")
                     <*> (x .:? "auth")
                     <*> (x .:? "buildspec")
                     <*> (x .:? "sourceIdentifier")
                     <*> (x .:? "gitCloneDepth")
                     <*> (x .:? "gitSubmodulesConfig")
                     <*> (x .: "type"))

instance Hashable ProjectSource where

instance NFData ProjectSource where

instance ToJSON ProjectSource where
        toJSON ProjectSource'{..}
          = object
              (catMaybes
                 [("reportBuildStatus" .=) <$> _psReportBuildStatus,
                  ("insecureSsl" .=) <$> _psInsecureSSL,
                  ("location" .=) <$> _psLocation,
                  ("auth" .=) <$> _psAuth,
                  ("buildspec" .=) <$> _psBuildspec,
                  ("sourceIdentifier" .=) <$> _psSourceIdentifier,
                  ("gitCloneDepth" .=) <$> _psGitCloneDepth,
                  ("gitSubmodulesConfig" .=) <$>
                    _psGitSubmodulesConfig,
                  Just ("type" .= _psType)])

-- | A source identifier and its corresponding version.
--
--
--
-- /See:/ 'projectSourceVersion' smart constructor.
data ProjectSourceVersion =
  ProjectSourceVersion'
    { _psvSourceIdentifier :: !Text
    , _psvSourceVersion    :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectSourceVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psvSourceIdentifier' - An identifier for a source in the build project.
--
-- * 'psvSourceVersion' - The source version for the corresponding source identifier. If specified, must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
projectSourceVersion
    :: Text -- ^ 'psvSourceIdentifier'
    -> Text -- ^ 'psvSourceVersion'
    -> ProjectSourceVersion
projectSourceVersion pSourceIdentifier_ pSourceVersion_ =
  ProjectSourceVersion'
    { _psvSourceIdentifier = pSourceIdentifier_
    , _psvSourceVersion = pSourceVersion_
    }


-- | An identifier for a source in the build project.
psvSourceIdentifier :: Lens' ProjectSourceVersion Text
psvSourceIdentifier = lens _psvSourceIdentifier (\ s a -> s{_psvSourceIdentifier = a})

-- | The source version for the corresponding source identifier. If specified, must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon Simple Storage Service (Amazon S3): the version ID of the object that represents the build input ZIP file to use. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
psvSourceVersion :: Lens' ProjectSourceVersion Text
psvSourceVersion = lens _psvSourceVersion (\ s a -> s{_psvSourceVersion = a})

instance FromJSON ProjectSourceVersion where
        parseJSON
          = withObject "ProjectSourceVersion"
              (\ x ->
                 ProjectSourceVersion' <$>
                   (x .: "sourceIdentifier") <*> (x .: "sourceVersion"))

instance Hashable ProjectSourceVersion where

instance NFData ProjectSourceVersion where

instance ToJSON ProjectSourceVersion where
        toJSON ProjectSourceVersion'{..}
          = object
              (catMaybes
                 [Just ("sourceIdentifier" .= _psvSourceIdentifier),
                  Just ("sourceVersion" .= _psvSourceVersion)])

-- | Information about credentials that provide access to a private Docker registry. When this is set:
--
--
--     * @imagePullCredentialsType@ must be set to @SERVICE_ROLE@ .
--
--     * images cannot be curated or an Amazon ECR image.
--
--
--
-- For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html Private Registry with AWS Secrets Manager Sample for AWS CodeBuild> .
--
--
-- /See:/ 'registryCredential' smart constructor.
data RegistryCredential =
  RegistryCredential'
    { _rcCredential         :: !Text
    , _rcCredentialProvider :: !CredentialProviderType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegistryCredential' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcCredential' - The Amazon Resource Name (ARN) or name of credentials created using AWS Secrets Manager.
--
-- * 'rcCredentialProvider' - The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for AWS Secrets Manager.
registryCredential
    :: Text -- ^ 'rcCredential'
    -> CredentialProviderType -- ^ 'rcCredentialProvider'
    -> RegistryCredential
registryCredential pCredential_ pCredentialProvider_ =
  RegistryCredential'
    {_rcCredential = pCredential_, _rcCredentialProvider = pCredentialProvider_}


-- | The Amazon Resource Name (ARN) or name of credentials created using AWS Secrets Manager.
rcCredential :: Lens' RegistryCredential Text
rcCredential = lens _rcCredential (\ s a -> s{_rcCredential = a})

-- | The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for AWS Secrets Manager.
rcCredentialProvider :: Lens' RegistryCredential CredentialProviderType
rcCredentialProvider = lens _rcCredentialProvider (\ s a -> s{_rcCredentialProvider = a})

instance FromJSON RegistryCredential where
        parseJSON
          = withObject "RegistryCredential"
              (\ x ->
                 RegistryCredential' <$>
                   (x .: "credential") <*> (x .: "credentialProvider"))

instance Hashable RegistryCredential where

instance NFData RegistryCredential where

instance ToJSON RegistryCredential where
        toJSON RegistryCredential'{..}
          = object
              (catMaybes
                 [Just ("credential" .= _rcCredential),
                  Just
                    ("credentialProvider" .= _rcCredentialProvider)])

-- | Information about the results from running a series of test cases during the run of a build project. The test cases are specified in the buildspec for the build project using one or more paths to the test case files. You can specify any type of tests you want, such as unit tests, integration tests, and functional tests.
--
--
--
-- /See:/ 'report' smart constructor.
data Report =
  Report'
    { _rReportGroupARN :: !(Maybe Text)
    , _rStatus         :: !(Maybe ReportStatusType)
    , _rExpired        :: !(Maybe POSIX)
    , _rExecutionId    :: !(Maybe Text)
    , _rTruncated      :: !(Maybe Bool)
    , _rArn            :: !(Maybe Text)
    , _rCreated        :: !(Maybe POSIX)
    , _rName           :: !(Maybe Text)
    , _rTestSummary    :: !(Maybe TestReportSummary)
    , _rType           :: !(Maybe ReportType)
    , _rExportConfig   :: !(Maybe ReportExportConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReportGroupARN' - The ARN of the report group associated with this report.
--
-- * 'rStatus' - The status of this report.
--
-- * 'rExpired' - The date and time a report expires. A report expires 30 days after it is created. An expired report is not available to view in CodeBuild.
--
-- * 'rExecutionId' - The ARN of the build run that generated this report.
--
-- * 'rTruncated' - A boolean that specifies if this report run is truncated. The list of test cases is truncated after the maximum number of test cases is reached.
--
-- * 'rArn' - The ARN of the report run.
--
-- * 'rCreated' - The date and time this report run occurred.
--
-- * 'rName' - The name of the report that was run.
--
-- * 'rTestSummary' - A @TestReportSummary@ object that contains information about this test report.
--
-- * 'rType' - The type of the report that was run.
--
-- * 'rExportConfig' - Information about where the raw data used to generate this report was exported.
report
    :: Report
report =
  Report'
    { _rReportGroupARN = Nothing
    , _rStatus = Nothing
    , _rExpired = Nothing
    , _rExecutionId = Nothing
    , _rTruncated = Nothing
    , _rArn = Nothing
    , _rCreated = Nothing
    , _rName = Nothing
    , _rTestSummary = Nothing
    , _rType = Nothing
    , _rExportConfig = Nothing
    }


-- | The ARN of the report group associated with this report.
rReportGroupARN :: Lens' Report (Maybe Text)
rReportGroupARN = lens _rReportGroupARN (\ s a -> s{_rReportGroupARN = a})

-- | The status of this report.
rStatus :: Lens' Report (Maybe ReportStatusType)
rStatus = lens _rStatus (\ s a -> s{_rStatus = a})

-- | The date and time a report expires. A report expires 30 days after it is created. An expired report is not available to view in CodeBuild.
rExpired :: Lens' Report (Maybe UTCTime)
rExpired = lens _rExpired (\ s a -> s{_rExpired = a}) . mapping _Time

-- | The ARN of the build run that generated this report.
rExecutionId :: Lens' Report (Maybe Text)
rExecutionId = lens _rExecutionId (\ s a -> s{_rExecutionId = a})

-- | A boolean that specifies if this report run is truncated. The list of test cases is truncated after the maximum number of test cases is reached.
rTruncated :: Lens' Report (Maybe Bool)
rTruncated = lens _rTruncated (\ s a -> s{_rTruncated = a})

-- | The ARN of the report run.
rArn :: Lens' Report (Maybe Text)
rArn = lens _rArn (\ s a -> s{_rArn = a})

-- | The date and time this report run occurred.
rCreated :: Lens' Report (Maybe UTCTime)
rCreated = lens _rCreated (\ s a -> s{_rCreated = a}) . mapping _Time

-- | The name of the report that was run.
rName :: Lens' Report (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | A @TestReportSummary@ object that contains information about this test report.
rTestSummary :: Lens' Report (Maybe TestReportSummary)
rTestSummary = lens _rTestSummary (\ s a -> s{_rTestSummary = a})

-- | The type of the report that was run.
rType :: Lens' Report (Maybe ReportType)
rType = lens _rType (\ s a -> s{_rType = a})

-- | Information about where the raw data used to generate this report was exported.
rExportConfig :: Lens' Report (Maybe ReportExportConfig)
rExportConfig = lens _rExportConfig (\ s a -> s{_rExportConfig = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ x ->
                 Report' <$>
                   (x .:? "reportGroupArn") <*> (x .:? "status") <*>
                     (x .:? "expired")
                     <*> (x .:? "executionId")
                     <*> (x .:? "truncated")
                     <*> (x .:? "arn")
                     <*> (x .:? "created")
                     <*> (x .:? "name")
                     <*> (x .:? "testSummary")
                     <*> (x .:? "type")
                     <*> (x .:? "exportConfig"))

instance Hashable Report where

instance NFData Report where

-- | Information about the location where the run of a report is exported.
--
--
--
-- /See:/ 'reportExportConfig' smart constructor.
data ReportExportConfig =
  ReportExportConfig'
    { _recExportConfigType :: !(Maybe ReportExportConfigType)
    , _recS3Destination    :: !(Maybe S3ReportExportConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportExportConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'recExportConfigType' - The export configuration type. Valid values are:      * @S3@ : The report results are exported to an S3 bucket.      * @NO_EXPORT@ : The report results are not exported.
--
-- * 'recS3Destination' - A @S3ReportExportConfig@ object that contains information about the S3 bucket where the run of a report is exported.
reportExportConfig
    :: ReportExportConfig
reportExportConfig =
  ReportExportConfig'
    {_recExportConfigType = Nothing, _recS3Destination = Nothing}


-- | The export configuration type. Valid values are:      * @S3@ : The report results are exported to an S3 bucket.      * @NO_EXPORT@ : The report results are not exported.
recExportConfigType :: Lens' ReportExportConfig (Maybe ReportExportConfigType)
recExportConfigType = lens _recExportConfigType (\ s a -> s{_recExportConfigType = a})

-- | A @S3ReportExportConfig@ object that contains information about the S3 bucket where the run of a report is exported.
recS3Destination :: Lens' ReportExportConfig (Maybe S3ReportExportConfig)
recS3Destination = lens _recS3Destination (\ s a -> s{_recS3Destination = a})

instance FromJSON ReportExportConfig where
        parseJSON
          = withObject "ReportExportConfig"
              (\ x ->
                 ReportExportConfig' <$>
                   (x .:? "exportConfigType") <*>
                     (x .:? "s3Destination"))

instance Hashable ReportExportConfig where

instance NFData ReportExportConfig where

instance ToJSON ReportExportConfig where
        toJSON ReportExportConfig'{..}
          = object
              (catMaybes
                 [("exportConfigType" .=) <$> _recExportConfigType,
                  ("s3Destination" .=) <$> _recS3Destination])

-- | A filter used to return reports with the status specified by the input @status@ parameter.
--
--
--
-- /See:/ 'reportFilter' smart constructor.
newtype ReportFilter =
  ReportFilter'
    { _rfStatus :: Maybe ReportStatusType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfStatus' - The status used to filter reports. You can filter using one status only.
reportFilter
    :: ReportFilter
reportFilter = ReportFilter' {_rfStatus = Nothing}


-- | The status used to filter reports. You can filter using one status only.
rfStatus :: Lens' ReportFilter (Maybe ReportStatusType)
rfStatus = lens _rfStatus (\ s a -> s{_rfStatus = a})

instance Hashable ReportFilter where

instance NFData ReportFilter where

instance ToJSON ReportFilter where
        toJSON ReportFilter'{..}
          = object (catMaybes [("status" .=) <$> _rfStatus])

-- | A series of reports. Each report contains information about the results from running a series of test cases. You specify the test cases for a report group in the buildspec for a build project using one or more paths to the test case files.
--
--
--
-- /See:/ 'reportGroup' smart constructor.
data ReportGroup =
  ReportGroup'
    { _rgArn          :: !(Maybe Text)
    , _rgCreated      :: !(Maybe POSIX)
    , _rgName         :: !(Maybe Text)
    , _rgType         :: !(Maybe ReportType)
    , _rgLastModified :: !(Maybe POSIX)
    , _rgExportConfig :: !(Maybe ReportExportConfig)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgArn' - The ARN of a @ReportGroup@ .
--
-- * 'rgCreated' - The date and time this @ReportGroup@ was created.
--
-- * 'rgName' - The name of a @ReportGroup@ .
--
-- * 'rgType' - The type of the @ReportGroup@ . The one valid value is @TEST@ .
--
-- * 'rgLastModified' - The date and time this @ReportGroup@ was last modified.
--
-- * 'rgExportConfig' - Information about the destination where the raw data of this @ReportGroup@ is exported.
reportGroup
    :: ReportGroup
reportGroup =
  ReportGroup'
    { _rgArn = Nothing
    , _rgCreated = Nothing
    , _rgName = Nothing
    , _rgType = Nothing
    , _rgLastModified = Nothing
    , _rgExportConfig = Nothing
    }


-- | The ARN of a @ReportGroup@ .
rgArn :: Lens' ReportGroup (Maybe Text)
rgArn = lens _rgArn (\ s a -> s{_rgArn = a})

-- | The date and time this @ReportGroup@ was created.
rgCreated :: Lens' ReportGroup (Maybe UTCTime)
rgCreated = lens _rgCreated (\ s a -> s{_rgCreated = a}) . mapping _Time

-- | The name of a @ReportGroup@ .
rgName :: Lens' ReportGroup (Maybe Text)
rgName = lens _rgName (\ s a -> s{_rgName = a})

-- | The type of the @ReportGroup@ . The one valid value is @TEST@ .
rgType :: Lens' ReportGroup (Maybe ReportType)
rgType = lens _rgType (\ s a -> s{_rgType = a})

-- | The date and time this @ReportGroup@ was last modified.
rgLastModified :: Lens' ReportGroup (Maybe UTCTime)
rgLastModified = lens _rgLastModified (\ s a -> s{_rgLastModified = a}) . mapping _Time

-- | Information about the destination where the raw data of this @ReportGroup@ is exported.
rgExportConfig :: Lens' ReportGroup (Maybe ReportExportConfig)
rgExportConfig = lens _rgExportConfig (\ s a -> s{_rgExportConfig = a})

instance FromJSON ReportGroup where
        parseJSON
          = withObject "ReportGroup"
              (\ x ->
                 ReportGroup' <$>
                   (x .:? "arn") <*> (x .:? "created") <*>
                     (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "lastModified")
                     <*> (x .:? "exportConfig"))

instance Hashable ReportGroup where

instance NFData ReportGroup where

-- | Information about S3 logs for a build project.
--
--
--
-- /See:/ 's3LogsConfig' smart constructor.
data S3LogsConfig =
  S3LogsConfig'
    { _slcLocation           :: !(Maybe Text)
    , _slcEncryptionDisabled :: !(Maybe Bool)
    , _slcStatus             :: !LogsConfigStatusType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'S3LogsConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcLocation' - The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is @my-bucket@ , and your path prefix is @build-log@ , then acceptable formats are @my-bucket/build-log@ or @arn:aws:s3:::my-bucket/build-log@ .
--
-- * 'slcEncryptionDisabled' - Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted.
--
-- * 'slcStatus' - The current status of the S3 build logs. Valid values are:     * @ENABLED@ : S3 build logs are enabled for this build project.     * @DISABLED@ : S3 build logs are not enabled for this build project.
s3LogsConfig
    :: LogsConfigStatusType -- ^ 'slcStatus'
    -> S3LogsConfig
s3LogsConfig pStatus_ =
  S3LogsConfig'
    { _slcLocation = Nothing
    , _slcEncryptionDisabled = Nothing
    , _slcStatus = pStatus_
    }


-- | The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is @my-bucket@ , and your path prefix is @build-log@ , then acceptable formats are @my-bucket/build-log@ or @arn:aws:s3:::my-bucket/build-log@ .
slcLocation :: Lens' S3LogsConfig (Maybe Text)
slcLocation = lens _slcLocation (\ s a -> s{_slcLocation = a})

-- | Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted.
slcEncryptionDisabled :: Lens' S3LogsConfig (Maybe Bool)
slcEncryptionDisabled = lens _slcEncryptionDisabled (\ s a -> s{_slcEncryptionDisabled = a})

-- | The current status of the S3 build logs. Valid values are:     * @ENABLED@ : S3 build logs are enabled for this build project.     * @DISABLED@ : S3 build logs are not enabled for this build project.
slcStatus :: Lens' S3LogsConfig LogsConfigStatusType
slcStatus = lens _slcStatus (\ s a -> s{_slcStatus = a})

instance FromJSON S3LogsConfig where
        parseJSON
          = withObject "S3LogsConfig"
              (\ x ->
                 S3LogsConfig' <$>
                   (x .:? "location") <*> (x .:? "encryptionDisabled")
                     <*> (x .: "status"))

instance Hashable S3LogsConfig where

instance NFData S3LogsConfig where

instance ToJSON S3LogsConfig where
        toJSON S3LogsConfig'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _slcLocation,
                  ("encryptionDisabled" .=) <$> _slcEncryptionDisabled,
                  Just ("status" .= _slcStatus)])

-- | Information about the S3 bucket where the raw data of a report are exported.
--
--
--
-- /See:/ 's3ReportExportConfig' smart constructor.
data S3ReportExportConfig =
  S3ReportExportConfig'
    { _srecPackaging          :: !(Maybe ReportPackagingType)
    , _srecPath               :: !(Maybe Text)
    , _srecBucket             :: !(Maybe Text)
    , _srecEncryptionDisabled :: !(Maybe Bool)
    , _srecEncryptionKey      :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'S3ReportExportConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srecPackaging' - The type of build output artifact to create. Valid values include:      * @NONE@ : AWS CodeBuild creates the raw data in the output bucket. This is the default if packaging is not specified.      * @ZIP@ : AWS CodeBuild creates a ZIP file with the raw data in the output bucket.
--
-- * 'srecPath' - The path to the exported report's raw data results.
--
-- * 'srecBucket' - The name of the S3 bucket where the raw data of a report are exported.
--
-- * 'srecEncryptionDisabled' - A boolean value that specifies if the results of a report are encrypted.
--
-- * 'srecEncryptionKey' - The encryption key for the report's encrypted raw data.
s3ReportExportConfig
    :: S3ReportExportConfig
s3ReportExportConfig =
  S3ReportExportConfig'
    { _srecPackaging = Nothing
    , _srecPath = Nothing
    , _srecBucket = Nothing
    , _srecEncryptionDisabled = Nothing
    , _srecEncryptionKey = Nothing
    }


-- | The type of build output artifact to create. Valid values include:      * @NONE@ : AWS CodeBuild creates the raw data in the output bucket. This is the default if packaging is not specified.      * @ZIP@ : AWS CodeBuild creates a ZIP file with the raw data in the output bucket.
srecPackaging :: Lens' S3ReportExportConfig (Maybe ReportPackagingType)
srecPackaging = lens _srecPackaging (\ s a -> s{_srecPackaging = a})

-- | The path to the exported report's raw data results.
srecPath :: Lens' S3ReportExportConfig (Maybe Text)
srecPath = lens _srecPath (\ s a -> s{_srecPath = a})

-- | The name of the S3 bucket where the raw data of a report are exported.
srecBucket :: Lens' S3ReportExportConfig (Maybe Text)
srecBucket = lens _srecBucket (\ s a -> s{_srecBucket = a})

-- | A boolean value that specifies if the results of a report are encrypted.
srecEncryptionDisabled :: Lens' S3ReportExportConfig (Maybe Bool)
srecEncryptionDisabled = lens _srecEncryptionDisabled (\ s a -> s{_srecEncryptionDisabled = a})

-- | The encryption key for the report's encrypted raw data.
srecEncryptionKey :: Lens' S3ReportExportConfig (Maybe Text)
srecEncryptionKey = lens _srecEncryptionKey (\ s a -> s{_srecEncryptionKey = a})

instance FromJSON S3ReportExportConfig where
        parseJSON
          = withObject "S3ReportExportConfig"
              (\ x ->
                 S3ReportExportConfig' <$>
                   (x .:? "packaging") <*> (x .:? "path") <*>
                     (x .:? "bucket")
                     <*> (x .:? "encryptionDisabled")
                     <*> (x .:? "encryptionKey"))

instance Hashable S3ReportExportConfig where

instance NFData S3ReportExportConfig where

instance ToJSON S3ReportExportConfig where
        toJSON S3ReportExportConfig'{..}
          = object
              (catMaybes
                 [("packaging" .=) <$> _srecPackaging,
                  ("path" .=) <$> _srecPath,
                  ("bucket" .=) <$> _srecBucket,
                  ("encryptionDisabled" .=) <$>
                    _srecEncryptionDisabled,
                  ("encryptionKey" .=) <$> _srecEncryptionKey])

-- | Information about the authorization settings for AWS CodeBuild to access the source code to be built.
--
--
-- This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.
--
--
-- /See:/ 'sourceAuth' smart constructor.
data SourceAuth =
  SourceAuth'
    { _saResource :: !(Maybe Text)
    , _saType     :: !SourceAuthType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saResource' - The resource value that applies to the specified authorization type.
--
-- * 'saType' - The authorization type to use. The only valid value is @OAUTH@ , which represents the OAuth authorization type.
sourceAuth
    :: SourceAuthType -- ^ 'saType'
    -> SourceAuth
sourceAuth pType_ = SourceAuth' {_saResource = Nothing, _saType = pType_}


-- | The resource value that applies to the specified authorization type.
saResource :: Lens' SourceAuth (Maybe Text)
saResource = lens _saResource (\ s a -> s{_saResource = a})

-- | The authorization type to use. The only valid value is @OAUTH@ , which represents the OAuth authorization type.
saType :: Lens' SourceAuth SourceAuthType
saType = lens _saType (\ s a -> s{_saType = a})

instance FromJSON SourceAuth where
        parseJSON
          = withObject "SourceAuth"
              (\ x ->
                 SourceAuth' <$> (x .:? "resource") <*> (x .: "type"))

instance Hashable SourceAuth where

instance NFData SourceAuth where

instance ToJSON SourceAuth where
        toJSON SourceAuth'{..}
          = object
              (catMaybes
                 [("resource" .=) <$> _saResource,
                  Just ("type" .= _saType)])

-- | Information about the credentials for a GitHub, GitHub Enterprise, or Bitbucket repository.
--
--
--
-- /See:/ 'sourceCredentialsInfo' smart constructor.
data SourceCredentialsInfo =
  SourceCredentialsInfo'
    { _sciArn        :: !(Maybe Text)
    , _sciServerType :: !(Maybe ServerType)
    , _sciAuthType   :: !(Maybe AuthType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceCredentialsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciArn' - The Amazon Resource Name (ARN) of the token.
--
-- * 'sciServerType' - The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, or BITBUCKET.
--
-- * 'sciAuthType' - The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, or PERSONAL_ACCESS_TOKEN.
sourceCredentialsInfo
    :: SourceCredentialsInfo
sourceCredentialsInfo =
  SourceCredentialsInfo'
    {_sciArn = Nothing, _sciServerType = Nothing, _sciAuthType = Nothing}


-- | The Amazon Resource Name (ARN) of the token.
sciArn :: Lens' SourceCredentialsInfo (Maybe Text)
sciArn = lens _sciArn (\ s a -> s{_sciArn = a})

-- | The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, or BITBUCKET.
sciServerType :: Lens' SourceCredentialsInfo (Maybe ServerType)
sciServerType = lens _sciServerType (\ s a -> s{_sciServerType = a})

-- | The type of authentication used by the credentials. Valid options are OAUTH, BASIC_AUTH, or PERSONAL_ACCESS_TOKEN.
sciAuthType :: Lens' SourceCredentialsInfo (Maybe AuthType)
sciAuthType = lens _sciAuthType (\ s a -> s{_sciAuthType = a})

instance FromJSON SourceCredentialsInfo where
        parseJSON
          = withObject "SourceCredentialsInfo"
              (\ x ->
                 SourceCredentialsInfo' <$>
                   (x .:? "arn") <*> (x .:? "serverType") <*>
                     (x .:? "authType"))

instance Hashable SourceCredentialsInfo where

instance NFData SourceCredentialsInfo where

-- | A tag, consisting of a key and a value.
--
--
-- This tag is available for use by AWS services that support tags in AWS CodeBuild.
--
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tagValue :: !(Maybe Text)
    , _tagKey   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagValue' - The tag's value.
--
-- * 'tagKey' - The tag's key.
tag
    :: Tag
tag = Tag' {_tagValue = Nothing, _tagKey = Nothing}


-- | The tag's value.
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\ s a -> s{_tagValue = a})

-- | The tag's key.
tagKey :: Lens' Tag (Maybe Text)
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ x -> Tag' <$> (x .:? "value") <*> (x .:? "key"))

instance Hashable Tag where

instance NFData Tag where

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tagValue, ("key" .=) <$> _tagKey])

-- | Information about a test case created using a framework such as NUnit or Cucumber. A test case might be a unit test or a configuration test.
--
--
--
-- /See:/ 'testCase' smart constructor.
data TestCase =
  TestCase'
    { _tcDurationInNanoSeconds :: !(Maybe Integer)
    , _tcStatus                :: !(Maybe Text)
    , _tcExpired               :: !(Maybe POSIX)
    , _tcPrefix                :: !(Maybe Text)
    , _tcName                  :: !(Maybe Text)
    , _tcTestRawDataPath       :: !(Maybe Text)
    , _tcMessage               :: !(Maybe Text)
    , _tcReportARN             :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcDurationInNanoSeconds' - The number of nanoseconds it took to run this test case.
--
-- * 'tcStatus' - The status returned by the test case after it was run. Valid statuses are @SUCCEEDED@ , @FAILED@ , @ERROR@ , @SKIPPED@ , and @UNKNOWN@ .
--
-- * 'tcExpired' - The date and time a test case expires. A test case expires 30 days after it is created. An expired test case is not available to view in CodeBuild.
--
-- * 'tcPrefix' - A string that is applied to a series of related test cases. CodeBuild generates the prefix. The prefix depends on the framework used to generate the tests.
--
-- * 'tcName' - The name of the test case.
--
-- * 'tcTestRawDataPath' - The path to the raw data file that contains the test result.
--
-- * 'tcMessage' - A message associated with a test case. For example, an error message or stack trace.
--
-- * 'tcReportARN' - The ARN of the report to which the test case belongs.
testCase
    :: TestCase
testCase =
  TestCase'
    { _tcDurationInNanoSeconds = Nothing
    , _tcStatus = Nothing
    , _tcExpired = Nothing
    , _tcPrefix = Nothing
    , _tcName = Nothing
    , _tcTestRawDataPath = Nothing
    , _tcMessage = Nothing
    , _tcReportARN = Nothing
    }


-- | The number of nanoseconds it took to run this test case.
tcDurationInNanoSeconds :: Lens' TestCase (Maybe Integer)
tcDurationInNanoSeconds = lens _tcDurationInNanoSeconds (\ s a -> s{_tcDurationInNanoSeconds = a})

-- | The status returned by the test case after it was run. Valid statuses are @SUCCEEDED@ , @FAILED@ , @ERROR@ , @SKIPPED@ , and @UNKNOWN@ .
tcStatus :: Lens' TestCase (Maybe Text)
tcStatus = lens _tcStatus (\ s a -> s{_tcStatus = a})

-- | The date and time a test case expires. A test case expires 30 days after it is created. An expired test case is not available to view in CodeBuild.
tcExpired :: Lens' TestCase (Maybe UTCTime)
tcExpired = lens _tcExpired (\ s a -> s{_tcExpired = a}) . mapping _Time

-- | A string that is applied to a series of related test cases. CodeBuild generates the prefix. The prefix depends on the framework used to generate the tests.
tcPrefix :: Lens' TestCase (Maybe Text)
tcPrefix = lens _tcPrefix (\ s a -> s{_tcPrefix = a})

-- | The name of the test case.
tcName :: Lens' TestCase (Maybe Text)
tcName = lens _tcName (\ s a -> s{_tcName = a})

-- | The path to the raw data file that contains the test result.
tcTestRawDataPath :: Lens' TestCase (Maybe Text)
tcTestRawDataPath = lens _tcTestRawDataPath (\ s a -> s{_tcTestRawDataPath = a})

-- | A message associated with a test case. For example, an error message or stack trace.
tcMessage :: Lens' TestCase (Maybe Text)
tcMessage = lens _tcMessage (\ s a -> s{_tcMessage = a})

-- | The ARN of the report to which the test case belongs.
tcReportARN :: Lens' TestCase (Maybe Text)
tcReportARN = lens _tcReportARN (\ s a -> s{_tcReportARN = a})

instance FromJSON TestCase where
        parseJSON
          = withObject "TestCase"
              (\ x ->
                 TestCase' <$>
                   (x .:? "durationInNanoSeconds") <*> (x .:? "status")
                     <*> (x .:? "expired")
                     <*> (x .:? "prefix")
                     <*> (x .:? "name")
                     <*> (x .:? "testRawDataPath")
                     <*> (x .:? "message")
                     <*> (x .:? "reportArn"))

instance Hashable TestCase where

instance NFData TestCase where

-- | A filter used to return specific types of test cases.
--
--
--
-- /See:/ 'testCaseFilter' smart constructor.
newtype TestCaseFilter =
  TestCaseFilter'
    { _tcfStatus :: Maybe Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestCaseFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcfStatus' - The status used to filter test cases. Valid statuses are @SUCCEEDED@ , @FAILED@ , @ERROR@ , @SKIPPED@ , and @UNKNOWN@ . A @TestCaseFilter@ can have one status.
testCaseFilter
    :: TestCaseFilter
testCaseFilter = TestCaseFilter' {_tcfStatus = Nothing}


-- | The status used to filter test cases. Valid statuses are @SUCCEEDED@ , @FAILED@ , @ERROR@ , @SKIPPED@ , and @UNKNOWN@ . A @TestCaseFilter@ can have one status.
tcfStatus :: Lens' TestCaseFilter (Maybe Text)
tcfStatus = lens _tcfStatus (\ s a -> s{_tcfStatus = a})

instance Hashable TestCaseFilter where

instance NFData TestCaseFilter where

instance ToJSON TestCaseFilter where
        toJSON TestCaseFilter'{..}
          = object (catMaybes [("status" .=) <$> _tcfStatus])

-- | Information about a test report.
--
--
--
-- /See:/ 'testReportSummary' smart constructor.
data TestReportSummary =
  TestReportSummary'
    { _trsTotal                 :: !Int
    , _trsStatusCounts          :: !(Map Text Int)
    , _trsDurationInNanoSeconds :: !Integer
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestReportSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsTotal' - The number of test cases in this @TestReportSummary@ . The total includes truncated test cases.
--
-- * 'trsStatusCounts' - A map that contains the number of each type of status returned by the test results in this @TestReportSummary@ .
--
-- * 'trsDurationInNanoSeconds' - The number of nanoseconds it took to run all of the test cases in this report.
testReportSummary
    :: Int -- ^ 'trsTotal'
    -> Integer -- ^ 'trsDurationInNanoSeconds'
    -> TestReportSummary
testReportSummary pTotal_ pDurationInNanoSeconds_ =
  TestReportSummary'
    { _trsTotal = pTotal_
    , _trsStatusCounts = mempty
    , _trsDurationInNanoSeconds = pDurationInNanoSeconds_
    }


-- | The number of test cases in this @TestReportSummary@ . The total includes truncated test cases.
trsTotal :: Lens' TestReportSummary Int
trsTotal = lens _trsTotal (\ s a -> s{_trsTotal = a})

-- | A map that contains the number of each type of status returned by the test results in this @TestReportSummary@ .
trsStatusCounts :: Lens' TestReportSummary (HashMap Text Int)
trsStatusCounts = lens _trsStatusCounts (\ s a -> s{_trsStatusCounts = a}) . _Map

-- | The number of nanoseconds it took to run all of the test cases in this report.
trsDurationInNanoSeconds :: Lens' TestReportSummary Integer
trsDurationInNanoSeconds = lens _trsDurationInNanoSeconds (\ s a -> s{_trsDurationInNanoSeconds = a})

instance FromJSON TestReportSummary where
        parseJSON
          = withObject "TestReportSummary"
              (\ x ->
                 TestReportSummary' <$>
                   (x .: "total") <*> (x .:? "statusCounts" .!= mempty)
                     <*> (x .: "durationInNanoSeconds"))

instance Hashable TestReportSummary where

instance NFData TestReportSummary where

-- | Information about the VPC configuration that AWS CodeBuild accesses.
--
--
--
-- /See:/ 'vpcConfig' smart constructor.
data VPCConfig =
  VPCConfig'
    { _vcSecurityGroupIds :: !(Maybe [Text])
    , _vcVpcId            :: !(Maybe Text)
    , _vcSubnets          :: !(Maybe [Text])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPCConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcSecurityGroupIds' - A list of one or more security groups IDs in your Amazon VPC.
--
-- * 'vcVpcId' - The ID of the Amazon VPC.
--
-- * 'vcSubnets' - A list of one or more subnet IDs in your Amazon VPC.
vpcConfig
    :: VPCConfig
vpcConfig =
  VPCConfig'
    {_vcSecurityGroupIds = Nothing, _vcVpcId = Nothing, _vcSubnets = Nothing}


-- | A list of one or more security groups IDs in your Amazon VPC.
vcSecurityGroupIds :: Lens' VPCConfig [Text]
vcSecurityGroupIds = lens _vcSecurityGroupIds (\ s a -> s{_vcSecurityGroupIds = a}) . _Default . _Coerce

-- | The ID of the Amazon VPC.
vcVpcId :: Lens' VPCConfig (Maybe Text)
vcVpcId = lens _vcVpcId (\ s a -> s{_vcVpcId = a})

-- | A list of one or more subnet IDs in your Amazon VPC.
vcSubnets :: Lens' VPCConfig [Text]
vcSubnets = lens _vcSubnets (\ s a -> s{_vcSubnets = a}) . _Default . _Coerce

instance FromJSON VPCConfig where
        parseJSON
          = withObject "VPCConfig"
              (\ x ->
                 VPCConfig' <$>
                   (x .:? "securityGroupIds" .!= mempty) <*>
                     (x .:? "vpcId")
                     <*> (x .:? "subnets" .!= mempty))

instance Hashable VPCConfig where

instance NFData VPCConfig where

instance ToJSON VPCConfig where
        toJSON VPCConfig'{..}
          = object
              (catMaybes
                 [("securityGroupIds" .=) <$> _vcSecurityGroupIds,
                  ("vpcId" .=) <$> _vcVpcId,
                  ("subnets" .=) <$> _vcSubnets])

-- | Information about a webhook that connects repository events to a build project in AWS CodeBuild.
--
--
--
-- /See:/ 'webhook' smart constructor.
data Webhook =
  Webhook'
    { _wBranchFilter       :: !(Maybe Text)
    , _wLastModifiedSecret :: !(Maybe POSIX)
    , _wUrl                :: !(Maybe Text)
    , _wSecret             :: !(Maybe Text)
    , _wFilterGroups       :: !(Maybe [[WebhookFilter]])
    , _wPayloadURL         :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Webhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wBranchFilter' - A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
--
-- * 'wLastModifiedSecret' - A timestamp that indicates the last time a repository's secret token was modified.
--
-- * 'wUrl' - The URL to the webhook.
--
-- * 'wSecret' - The secret token of the associated repository.
--
-- * 'wFilterGroups' - An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .  For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
--
-- * 'wPayloadURL' - The AWS CodeBuild endpoint where webhook events are sent.
webhook
    :: Webhook
webhook =
  Webhook'
    { _wBranchFilter = Nothing
    , _wLastModifiedSecret = Nothing
    , _wUrl = Nothing
    , _wSecret = Nothing
    , _wFilterGroups = Nothing
    , _wPayloadURL = Nothing
    }


-- | A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
wBranchFilter :: Lens' Webhook (Maybe Text)
wBranchFilter = lens _wBranchFilter (\ s a -> s{_wBranchFilter = a})

-- | A timestamp that indicates the last time a repository's secret token was modified.
wLastModifiedSecret :: Lens' Webhook (Maybe UTCTime)
wLastModifiedSecret = lens _wLastModifiedSecret (\ s a -> s{_wLastModifiedSecret = a}) . mapping _Time

-- | The URL to the webhook.
wUrl :: Lens' Webhook (Maybe Text)
wUrl = lens _wUrl (\ s a -> s{_wUrl = a})

-- | The secret token of the associated repository.
wSecret :: Lens' Webhook (Maybe Text)
wSecret = lens _wSecret (\ s a -> s{_wSecret = a})

-- | An array of arrays of @WebhookFilter@ objects used to determine which webhooks are triggered. At least one @WebhookFilter@ in the array must specify @EVENT@ as its @type@ .  For a build to be triggered, at least one filter group in the @filterGroups@ array must pass. For a filter group to pass, each of its filters must pass.
wFilterGroups :: Lens' Webhook [[WebhookFilter]]
wFilterGroups = lens _wFilterGroups (\ s a -> s{_wFilterGroups = a}) . _Default . _Coerce

-- | The AWS CodeBuild endpoint where webhook events are sent.
wPayloadURL :: Lens' Webhook (Maybe Text)
wPayloadURL = lens _wPayloadURL (\ s a -> s{_wPayloadURL = a})

instance FromJSON Webhook where
        parseJSON
          = withObject "Webhook"
              (\ x ->
                 Webhook' <$>
                   (x .:? "branchFilter") <*>
                     (x .:? "lastModifiedSecret")
                     <*> (x .:? "url")
                     <*> (x .:? "secret")
                     <*> (x .:? "filterGroups" .!= mempty)
                     <*> (x .:? "payloadUrl"))

instance Hashable Webhook where

instance NFData Webhook where

-- | A filter used to determine which webhooks trigger a build.
--
--
--
-- /See:/ 'webhookFilter' smart constructor.
data WebhookFilter =
  WebhookFilter'
    { _wfExcludeMatchedPattern :: !(Maybe Bool)
    , _wfType                  :: !WebhookFilterType
    , _wfPattern               :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'WebhookFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wfExcludeMatchedPattern' - Used to indicate that the @pattern@ determines which webhook events do not trigger a build. If true, then a webhook event that does not match the @pattern@ triggers a build. If false, then a webhook event that matches the @pattern@ triggers a build.
--
-- * 'wfType' - The type of webhook filter. There are five webhook filter types: @EVENT@ , @ACTOR_ACCOUNT_ID@ , @HEAD_REF@ , @BASE_REF@ , and @FILE_PATH@ .      * EVENT     * A webhook event triggers a build when the provided @pattern@ matches one of four event types: @PUSH@ , @PULL_REQUEST_CREATED@ , @PULL_REQUEST_UPDATED@ , and @PULL_REQUEST_REOPENED@ . The @EVENT@ patterns are specified as a comma-separated string. For example, @PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED@ filters all push, pull request created, and pull request updated events.      * ACTOR_ACCOUNT_ID     * A webhook event triggers a build when a GitHub, GitHub Enterprise, or Bitbucket account ID matches the regular expression @pattern@ .      * HEAD_REF     * A webhook event triggers a build when the head reference matches the regular expression @pattern@ . For example, @refs/heads/branch-name@ and @refs/tags/tag-name@ .  Works with GitHub and GitHub Enterprise push, GitHub and GitHub Enterprise pull request, Bitbucket push, and Bitbucket pull request events.      * BASE_REF     * A webhook event triggers a build when the base reference matches the regular expression @pattern@ . For example, @refs/heads/branch-name@ .      * FILE_PATH     * A webhook triggers a build when the path of a changed file matches the regular expression @pattern@ .
--
-- * 'wfPattern' - For a @WebHookFilter@ that uses @EVENT@ type, a comma-separated string that specifies one or more events. For example, the webhook filter @PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED@ allows all push, pull request created, and pull request updated events to trigger a build.  For a @WebHookFilter@ that uses any of the other filter types, a regular expression pattern. For example, a @WebHookFilter@ that uses @HEAD_REF@ for its @type@ and the pattern @^refs/heads/@ triggers a build when the head reference is a branch with a reference name @refs/heads/branch-name@ .
webhookFilter
    :: WebhookFilterType -- ^ 'wfType'
    -> Text -- ^ 'wfPattern'
    -> WebhookFilter
webhookFilter pType_ pPattern_ =
  WebhookFilter'
    { _wfExcludeMatchedPattern = Nothing
    , _wfType = pType_
    , _wfPattern = pPattern_
    }


-- | Used to indicate that the @pattern@ determines which webhook events do not trigger a build. If true, then a webhook event that does not match the @pattern@ triggers a build. If false, then a webhook event that matches the @pattern@ triggers a build.
wfExcludeMatchedPattern :: Lens' WebhookFilter (Maybe Bool)
wfExcludeMatchedPattern = lens _wfExcludeMatchedPattern (\ s a -> s{_wfExcludeMatchedPattern = a})

-- | The type of webhook filter. There are five webhook filter types: @EVENT@ , @ACTOR_ACCOUNT_ID@ , @HEAD_REF@ , @BASE_REF@ , and @FILE_PATH@ .      * EVENT     * A webhook event triggers a build when the provided @pattern@ matches one of four event types: @PUSH@ , @PULL_REQUEST_CREATED@ , @PULL_REQUEST_UPDATED@ , and @PULL_REQUEST_REOPENED@ . The @EVENT@ patterns are specified as a comma-separated string. For example, @PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED@ filters all push, pull request created, and pull request updated events.      * ACTOR_ACCOUNT_ID     * A webhook event triggers a build when a GitHub, GitHub Enterprise, or Bitbucket account ID matches the regular expression @pattern@ .      * HEAD_REF     * A webhook event triggers a build when the head reference matches the regular expression @pattern@ . For example, @refs/heads/branch-name@ and @refs/tags/tag-name@ .  Works with GitHub and GitHub Enterprise push, GitHub and GitHub Enterprise pull request, Bitbucket push, and Bitbucket pull request events.      * BASE_REF     * A webhook event triggers a build when the base reference matches the regular expression @pattern@ . For example, @refs/heads/branch-name@ .      * FILE_PATH     * A webhook triggers a build when the path of a changed file matches the regular expression @pattern@ .
wfType :: Lens' WebhookFilter WebhookFilterType
wfType = lens _wfType (\ s a -> s{_wfType = a})

-- | For a @WebHookFilter@ that uses @EVENT@ type, a comma-separated string that specifies one or more events. For example, the webhook filter @PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED@ allows all push, pull request created, and pull request updated events to trigger a build.  For a @WebHookFilter@ that uses any of the other filter types, a regular expression pattern. For example, a @WebHookFilter@ that uses @HEAD_REF@ for its @type@ and the pattern @^refs/heads/@ triggers a build when the head reference is a branch with a reference name @refs/heads/branch-name@ .
wfPattern :: Lens' WebhookFilter Text
wfPattern = lens _wfPattern (\ s a -> s{_wfPattern = a})

instance FromJSON WebhookFilter where
        parseJSON
          = withObject "WebhookFilter"
              (\ x ->
                 WebhookFilter' <$>
                   (x .:? "excludeMatchedPattern") <*> (x .: "type") <*>
                     (x .: "pattern"))

instance Hashable WebhookFilter where

instance NFData WebhookFilter where

instance ToJSON WebhookFilter where
        toJSON WebhookFilter'{..}
          = object
              (catMaybes
                 [("excludeMatchedPattern" .=) <$>
                    _wfExcludeMatchedPattern,
                  Just ("type" .= _wfType),
                  Just ("pattern" .= _wfPattern)])
