{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstancePatchState
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.InstancePatchState where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.PatchOperationType

-- | Defines the high-level patch compliance state for a managed instance, providing information about the number of installed, missing, not applicable, and failed patches along with metadata about the operation when this information was gathered for the instance.
--
--
--
-- /See:/ 'instancePatchState' smart constructor.
data InstancePatchState = InstancePatchState'{_ipsOwnerInformation
                                              :: !(Maybe (Sensitive Text)),
                                              _ipsFailedCount :: !(Maybe Int),
                                              _ipsInstalledOtherCount ::
                                              !(Maybe Int),
                                              _ipsMissingCount :: !(Maybe Int),
                                              _ipsNotApplicableCount ::
                                              !(Maybe Int),
                                              _ipsInstalledCount ::
                                              !(Maybe Int),
                                              _ipsSnapshotId :: !(Maybe Text),
                                              _ipsInstanceId :: !Text,
                                              _ipsPatchGroup :: !Text,
                                              _ipsBaselineId :: !Text,
                                              _ipsOperationStartTime :: !POSIX,
                                              _ipsOperationEndTime :: !POSIX,
                                              _ipsOperation ::
                                              !PatchOperationType}
                            deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancePatchState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipsOwnerInformation' - Placeholder information. This field will always be empty in the current release of the service.
--
-- * 'ipsFailedCount' - The number of patches from the patch baseline that were attempted to be installed during the last patching operation, but failed to install.
--
-- * 'ipsInstalledOtherCount' - The number of patches not specified in the patch baseline that are installed on the instance.
--
-- * 'ipsMissingCount' - The number of patches from the patch baseline that are applicable for the instance but aren't currently installed.
--
-- * 'ipsNotApplicableCount' - The number of patches from the patch baseline that aren't applicable for the instance and hence aren't installed on the instance.
--
-- * 'ipsInstalledCount' - The number of patches from the patch baseline that are installed on the instance.
--
-- * 'ipsSnapshotId' - The ID of the patch baseline snapshot used during the patching operation when this compliance data was collected.
--
-- * 'ipsInstanceId' - The ID of the managed instance the high-level patch compliance information was collected for.
--
-- * 'ipsPatchGroup' - The name of the patch group the managed instance belongs to.
--
-- * 'ipsBaselineId' - The ID of the patch baseline used to patch the instance.
--
-- * 'ipsOperationStartTime' - The time the most recent patching operation was started on the instance.
--
-- * 'ipsOperationEndTime' - The time the most recent patching operation completed on the instance.
--
-- * 'ipsOperation' - The type of patching operation that was performed: SCAN (assess patch compliance state) or INSTALL (install missing patches).
instancePatchState
    :: Text -- ^ 'ipsInstanceId'
    -> Text -- ^ 'ipsPatchGroup'
    -> Text -- ^ 'ipsBaselineId'
    -> UTCTime -- ^ 'ipsOperationStartTime'
    -> UTCTime -- ^ 'ipsOperationEndTime'
    -> PatchOperationType -- ^ 'ipsOperation'
    -> InstancePatchState
instancePatchState pInstanceId_ pPatchGroup_
  pBaselineId_ pOperationStartTime_ pOperationEndTime_
  pOperation_
  = InstancePatchState'{_ipsOwnerInformation = Nothing,
                        _ipsFailedCount = Nothing,
                        _ipsInstalledOtherCount = Nothing,
                        _ipsMissingCount = Nothing,
                        _ipsNotApplicableCount = Nothing,
                        _ipsInstalledCount = Nothing,
                        _ipsSnapshotId = Nothing,
                        _ipsInstanceId = pInstanceId_,
                        _ipsPatchGroup = pPatchGroup_,
                        _ipsBaselineId = pBaselineId_,
                        _ipsOperationStartTime =
                          _Time # pOperationStartTime_,
                        _ipsOperationEndTime = _Time # pOperationEndTime_,
                        _ipsOperation = pOperation_}

-- | Placeholder information. This field will always be empty in the current release of the service.
ipsOwnerInformation :: Lens' InstancePatchState (Maybe Text)
ipsOwnerInformation = lens _ipsOwnerInformation (\ s a -> s{_ipsOwnerInformation = a}) . mapping _Sensitive

-- | The number of patches from the patch baseline that were attempted to be installed during the last patching operation, but failed to install.
ipsFailedCount :: Lens' InstancePatchState (Maybe Int)
ipsFailedCount = lens _ipsFailedCount (\ s a -> s{_ipsFailedCount = a})

-- | The number of patches not specified in the patch baseline that are installed on the instance.
ipsInstalledOtherCount :: Lens' InstancePatchState (Maybe Int)
ipsInstalledOtherCount = lens _ipsInstalledOtherCount (\ s a -> s{_ipsInstalledOtherCount = a})

-- | The number of patches from the patch baseline that are applicable for the instance but aren't currently installed.
ipsMissingCount :: Lens' InstancePatchState (Maybe Int)
ipsMissingCount = lens _ipsMissingCount (\ s a -> s{_ipsMissingCount = a})

-- | The number of patches from the patch baseline that aren't applicable for the instance and hence aren't installed on the instance.
ipsNotApplicableCount :: Lens' InstancePatchState (Maybe Int)
ipsNotApplicableCount = lens _ipsNotApplicableCount (\ s a -> s{_ipsNotApplicableCount = a})

-- | The number of patches from the patch baseline that are installed on the instance.
ipsInstalledCount :: Lens' InstancePatchState (Maybe Int)
ipsInstalledCount = lens _ipsInstalledCount (\ s a -> s{_ipsInstalledCount = a})

-- | The ID of the patch baseline snapshot used during the patching operation when this compliance data was collected.
ipsSnapshotId :: Lens' InstancePatchState (Maybe Text)
ipsSnapshotId = lens _ipsSnapshotId (\ s a -> s{_ipsSnapshotId = a})

-- | The ID of the managed instance the high-level patch compliance information was collected for.
ipsInstanceId :: Lens' InstancePatchState Text
ipsInstanceId = lens _ipsInstanceId (\ s a -> s{_ipsInstanceId = a})

-- | The name of the patch group the managed instance belongs to.
ipsPatchGroup :: Lens' InstancePatchState Text
ipsPatchGroup = lens _ipsPatchGroup (\ s a -> s{_ipsPatchGroup = a})

-- | The ID of the patch baseline used to patch the instance.
ipsBaselineId :: Lens' InstancePatchState Text
ipsBaselineId = lens _ipsBaselineId (\ s a -> s{_ipsBaselineId = a})

-- | The time the most recent patching operation was started on the instance.
ipsOperationStartTime :: Lens' InstancePatchState UTCTime
ipsOperationStartTime = lens _ipsOperationStartTime (\ s a -> s{_ipsOperationStartTime = a}) . _Time

-- | The time the most recent patching operation completed on the instance.
ipsOperationEndTime :: Lens' InstancePatchState UTCTime
ipsOperationEndTime = lens _ipsOperationEndTime (\ s a -> s{_ipsOperationEndTime = a}) . _Time

-- | The type of patching operation that was performed: SCAN (assess patch compliance state) or INSTALL (install missing patches).
ipsOperation :: Lens' InstancePatchState PatchOperationType
ipsOperation = lens _ipsOperation (\ s a -> s{_ipsOperation = a})

instance FromJSON InstancePatchState where
        parseJSON
          = withObject "InstancePatchState"
              (\ x ->
                 InstancePatchState' <$>
                   (x .:? "OwnerInformation") <*> (x .:? "FailedCount")
                     <*> (x .:? "InstalledOtherCount")
                     <*> (x .:? "MissingCount")
                     <*> (x .:? "NotApplicableCount")
                     <*> (x .:? "InstalledCount")
                     <*> (x .:? "SnapshotId")
                     <*> (x .: "InstanceId")
                     <*> (x .: "PatchGroup")
                     <*> (x .: "BaselineId")
                     <*> (x .: "OperationStartTime")
                     <*> (x .: "OperationEndTime")
                     <*> (x .: "Operation"))

instance Hashable InstancePatchState where

instance NFData InstancePatchState where
