{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.FileSystemDescription
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EFS.Types.FileSystemDescription where

import Network.AWS.EFS.Types.FileSystemSize
import Network.AWS.EFS.Types.LifeCycleState
import Network.AWS.EFS.Types.PerformanceMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Description of the file system.
--
--
--
-- /See:/ 'fileSystemDescription' smart constructor.
data FileSystemDescription = FileSystemDescription'{_fsdEncrypted
                                                    :: !(Maybe Bool),
                                                    _fsdKMSKeyId ::
                                                    !(Maybe Text),
                                                    _fsdName :: !(Maybe Text),
                                                    _fsdOwnerId :: !Text,
                                                    _fsdCreationToken :: !Text,
                                                    _fsdFileSystemId :: !Text,
                                                    _fsdCreationTime :: !POSIX,
                                                    _fsdLifeCycleState ::
                                                    !LifeCycleState,
                                                    _fsdNumberOfMountTargets ::
                                                    !Nat,
                                                    _fsdSizeInBytes ::
                                                    !FileSystemSize,
                                                    _fsdPerformanceMode ::
                                                    !PerformanceMode}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'FileSystemDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsdEncrypted' - A boolean value that, if true, indicates that the file system is encrypted.
--
-- * 'fsdKMSKeyId' - The id of an AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system.
--
-- * 'fsdName' - You can add tags to a file system, including a @Name@ tag. For more information, see 'CreateTags' . If the file system has a @Name@ tag, Amazon EFS returns the value in this field. 
--
-- * 'fsdOwnerId' - AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.
--
-- * 'fsdCreationToken' - Opaque string specified in the request.
--
-- * 'fsdFileSystemId' - ID of the file system, assigned by Amazon EFS.
--
-- * 'fsdCreationTime' - Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).
--
-- * 'fsdLifeCycleState' - Lifecycle phase of the file system.
--
-- * 'fsdNumberOfMountTargets' - Current number of mount targets that the file system has. For more information, see 'CreateMountTarget' .
--
-- * 'fsdSizeInBytes' - Latest known metered size (in bytes) of data stored in the file system, in bytes, in its @Value@ field, and the time at which that size was determined in its @Timestamp@ field. The @Timestamp@ value is the integer number of seconds since 1970-01-01T00:00:00Z. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size the file system was at any instant in time. 
--
-- * 'fsdPerformanceMode' - The @PerformanceMode@ of the file system.
fileSystemDescription
    :: Text -- ^ 'fsdOwnerId'
    -> Text -- ^ 'fsdCreationToken'
    -> Text -- ^ 'fsdFileSystemId'
    -> UTCTime -- ^ 'fsdCreationTime'
    -> LifeCycleState -- ^ 'fsdLifeCycleState'
    -> Natural -- ^ 'fsdNumberOfMountTargets'
    -> FileSystemSize -- ^ 'fsdSizeInBytes'
    -> PerformanceMode -- ^ 'fsdPerformanceMode'
    -> FileSystemDescription
fileSystemDescription pOwnerId_ pCreationToken_
  pFileSystemId_ pCreationTime_ pLifeCycleState_
  pNumberOfMountTargets_ pSizeInBytes_
  pPerformanceMode_
  = FileSystemDescription'{_fsdEncrypted = Nothing,
                           _fsdKMSKeyId = Nothing, _fsdName = Nothing,
                           _fsdOwnerId = pOwnerId_,
                           _fsdCreationToken = pCreationToken_,
                           _fsdFileSystemId = pFileSystemId_,
                           _fsdCreationTime = _Time # pCreationTime_,
                           _fsdLifeCycleState = pLifeCycleState_,
                           _fsdNumberOfMountTargets =
                             _Nat # pNumberOfMountTargets_,
                           _fsdSizeInBytes = pSizeInBytes_,
                           _fsdPerformanceMode = pPerformanceMode_}

-- | A boolean value that, if true, indicates that the file system is encrypted.
fsdEncrypted :: Lens' FileSystemDescription (Maybe Bool)
fsdEncrypted = lens _fsdEncrypted (\ s a -> s{_fsdEncrypted = a})

-- | The id of an AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system.
fsdKMSKeyId :: Lens' FileSystemDescription (Maybe Text)
fsdKMSKeyId = lens _fsdKMSKeyId (\ s a -> s{_fsdKMSKeyId = a})

-- | You can add tags to a file system, including a @Name@ tag. For more information, see 'CreateTags' . If the file system has a @Name@ tag, Amazon EFS returns the value in this field. 
fsdName :: Lens' FileSystemDescription (Maybe Text)
fsdName = lens _fsdName (\ s a -> s{_fsdName = a})

-- | AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.
fsdOwnerId :: Lens' FileSystemDescription Text
fsdOwnerId = lens _fsdOwnerId (\ s a -> s{_fsdOwnerId = a})

-- | Opaque string specified in the request.
fsdCreationToken :: Lens' FileSystemDescription Text
fsdCreationToken = lens _fsdCreationToken (\ s a -> s{_fsdCreationToken = a})

-- | ID of the file system, assigned by Amazon EFS.
fsdFileSystemId :: Lens' FileSystemDescription Text
fsdFileSystemId = lens _fsdFileSystemId (\ s a -> s{_fsdFileSystemId = a})

-- | Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).
fsdCreationTime :: Lens' FileSystemDescription UTCTime
fsdCreationTime = lens _fsdCreationTime (\ s a -> s{_fsdCreationTime = a}) . _Time

-- | Lifecycle phase of the file system.
fsdLifeCycleState :: Lens' FileSystemDescription LifeCycleState
fsdLifeCycleState = lens _fsdLifeCycleState (\ s a -> s{_fsdLifeCycleState = a})

-- | Current number of mount targets that the file system has. For more information, see 'CreateMountTarget' .
fsdNumberOfMountTargets :: Lens' FileSystemDescription Natural
fsdNumberOfMountTargets = lens _fsdNumberOfMountTargets (\ s a -> s{_fsdNumberOfMountTargets = a}) . _Nat

-- | Latest known metered size (in bytes) of data stored in the file system, in bytes, in its @Value@ field, and the time at which that size was determined in its @Timestamp@ field. The @Timestamp@ value is the integer number of seconds since 1970-01-01T00:00:00Z. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size the file system was at any instant in time. 
fsdSizeInBytes :: Lens' FileSystemDescription FileSystemSize
fsdSizeInBytes = lens _fsdSizeInBytes (\ s a -> s{_fsdSizeInBytes = a})

-- | The @PerformanceMode@ of the file system.
fsdPerformanceMode :: Lens' FileSystemDescription PerformanceMode
fsdPerformanceMode = lens _fsdPerformanceMode (\ s a -> s{_fsdPerformanceMode = a})

instance FromJSON FileSystemDescription where
        parseJSON
          = withObject "FileSystemDescription"
              (\ x ->
                 FileSystemDescription' <$>
                   (x .:? "Encrypted") <*> (x .:? "KmsKeyId") <*>
                     (x .:? "Name")
                     <*> (x .: "OwnerId")
                     <*> (x .: "CreationToken")
                     <*> (x .: "FileSystemId")
                     <*> (x .: "CreationTime")
                     <*> (x .: "LifeCycleState")
                     <*> (x .: "NumberOfMountTargets")
                     <*> (x .: "SizeInBytes")
                     <*> (x .: "PerformanceMode"))

instance Hashable FileSystemDescription where

instance NFData FileSystemDescription where
