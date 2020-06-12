{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.Build
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.Build where

import Network.AWS.GameLift.Types.BuildStatus
import Network.AWS.GameLift.Types.OperatingSystem
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties describing a game build.
--
--
-- Build-related operations include:
--
--     * 'CreateBuild' 
--
--     * 'ListBuilds' 
--
--     * 'DescribeBuild' 
--
--     * 'UpdateBuild' 
--
--     * 'DeleteBuild' 
--
--
--
--
-- /See:/ 'build' smart constructor.
data Build = Build'{_bCreationTime :: !(Maybe POSIX),
                    _bStatus :: !(Maybe BuildStatus),
                    _bOperatingSystem :: !(Maybe OperatingSystem),
                    _bBuildId :: !(Maybe Text), _bName :: !(Maybe Text),
                    _bVersion :: !(Maybe Text),
                    _bSizeOnDisk :: !(Maybe Nat)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Build' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bCreationTime' - Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'bStatus' - Current status of the build. Possible build statuses include the following:     * __INITIALIZED__ -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.      * __READY__ -- The game build has been successfully uploaded. You can now create new fleets for this build.     * __FAILED__ -- The game build upload failed. You cannot create new fleets for this build. 
--
-- * 'bOperatingSystem' - Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.
--
-- * 'bBuildId' - Unique identifier for a build.
--
-- * 'bName' - Descriptive label that is associated with a build. Build names do not need to be unique. It can be set using 'CreateBuild' or 'UpdateBuild' .
--
-- * 'bVersion' - Version that is associated with this build. Version strings do not need to be unique. This value can be set using 'CreateBuild' or 'UpdateBuild' .
--
-- * 'bSizeOnDisk' - File size of the uploaded game build, expressed in bytes. When the build status is @INITIALIZED@ , this value is 0.
build
    :: Build
build
  = Build'{_bCreationTime = Nothing,
           _bStatus = Nothing, _bOperatingSystem = Nothing,
           _bBuildId = Nothing, _bName = Nothing,
           _bVersion = Nothing, _bSizeOnDisk = Nothing}

-- | Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
bCreationTime :: Lens' Build (Maybe UTCTime)
bCreationTime = lens _bCreationTime (\ s a -> s{_bCreationTime = a}) . mapping _Time

-- | Current status of the build. Possible build statuses include the following:     * __INITIALIZED__ -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value.      * __READY__ -- The game build has been successfully uploaded. You can now create new fleets for this build.     * __FAILED__ -- The game build upload failed. You cannot create new fleets for this build. 
bStatus :: Lens' Build (Maybe BuildStatus)
bStatus = lens _bStatus (\ s a -> s{_bStatus = a})

-- | Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.
bOperatingSystem :: Lens' Build (Maybe OperatingSystem)
bOperatingSystem = lens _bOperatingSystem (\ s a -> s{_bOperatingSystem = a})

-- | Unique identifier for a build.
bBuildId :: Lens' Build (Maybe Text)
bBuildId = lens _bBuildId (\ s a -> s{_bBuildId = a})

-- | Descriptive label that is associated with a build. Build names do not need to be unique. It can be set using 'CreateBuild' or 'UpdateBuild' .
bName :: Lens' Build (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

-- | Version that is associated with this build. Version strings do not need to be unique. This value can be set using 'CreateBuild' or 'UpdateBuild' .
bVersion :: Lens' Build (Maybe Text)
bVersion = lens _bVersion (\ s a -> s{_bVersion = a})

-- | File size of the uploaded game build, expressed in bytes. When the build status is @INITIALIZED@ , this value is 0.
bSizeOnDisk :: Lens' Build (Maybe Natural)
bSizeOnDisk = lens _bSizeOnDisk (\ s a -> s{_bSizeOnDisk = a}) . mapping _Nat

instance FromJSON Build where
        parseJSON
          = withObject "Build"
              (\ x ->
                 Build' <$>
                   (x .:? "CreationTime") <*> (x .:? "Status") <*>
                     (x .:? "OperatingSystem")
                     <*> (x .:? "BuildId")
                     <*> (x .:? "Name")
                     <*> (x .:? "Version")
                     <*> (x .:? "SizeOnDisk"))

instance Hashable Build where

instance NFData Build where
