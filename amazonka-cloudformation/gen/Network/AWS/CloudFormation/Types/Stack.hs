{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Stack
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.Stack where

import Network.AWS.CloudFormation.Types.Capability
import Network.AWS.CloudFormation.Types.Output
import Network.AWS.CloudFormation.Types.Parameter
import Network.AWS.CloudFormation.Types.RollbackConfiguration
import Network.AWS.CloudFormation.Types.StackStatus
import Network.AWS.CloudFormation.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Stack data type.
--
--
--
-- /See:/ 'stack' smart constructor.
data Stack = Stack'{_sDisableRollback ::
                    !(Maybe Bool),
                    _sLastUpdatedTime :: !(Maybe ISO8601),
                    _sRootId :: !(Maybe Text),
                    _sNotificationARNs :: !(Maybe [Text]),
                    _sStackStatusReason :: !(Maybe Text),
                    _sEnableTerminationProtection :: !(Maybe Bool),
                    _sChangeSetId :: !(Maybe Text),
                    _sDeletionTime :: !(Maybe ISO8601),
                    _sOutputs :: !(Maybe [Output]),
                    _sParameters :: !(Maybe [Parameter]),
                    _sStackId :: !(Maybe Text),
                    _sDescription :: !(Maybe Text),
                    _sCapabilities :: !(Maybe [Capability]),
                    _sRollbackConfiguration ::
                    !(Maybe RollbackConfiguration),
                    _sTags :: !(Maybe [Tag]),
                    _sTimeoutInMinutes :: !(Maybe Nat),
                    _sParentId :: !(Maybe Text),
                    _sRoleARN :: !(Maybe Text), _sStackName :: !Text,
                    _sCreationTime :: !ISO8601,
                    _sStackStatus :: !StackStatus}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDisableRollback' - Boolean to enable or disable rollback on stack creation failures:     * @true@ : disable rollback     * @false@ : enable rollback
--
-- * 'sLastUpdatedTime' - The time the stack was last updated. This field will only be returned if the stack has been updated at least once.
--
-- * 'sRootId' - For nested stacks--stacks created as resources for another stack--the stack ID of the the top-level stack to which the nested stack ultimately belongs. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html Working with Nested Stacks> in the /AWS CloudFormation User Guide/ .
--
-- * 'sNotificationARNs' - SNS topic ARNs to which stack related events are published.
--
-- * 'sStackStatusReason' - Success/failure message associated with the stack status.
--
-- * 'sEnableTerminationProtection' - Whether termination protection is enabled for the stack. For <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ .
--
-- * 'sChangeSetId' - The unique ID of the change set.
--
-- * 'sDeletionTime' - The time the stack was deleted.
--
-- * 'sOutputs' - A list of output structures.
--
-- * 'sParameters' - A list of @Parameter@ structures.
--
-- * 'sStackId' - Unique identifier of the stack.
--
-- * 'sDescription' - A user-defined description associated with the stack.
--
-- * 'sCapabilities' - The capabilities allowed in the stack.
--
-- * 'sRollbackConfiguration' - The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
--
-- * 'sTags' - A list of @Tag@ s that specify information about the stack.
--
-- * 'sTimeoutInMinutes' - The amount of time within which stack creation should complete.
--
-- * 'sParentId' - For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html Working with Nested Stacks> in the /AWS CloudFormation User Guide/ .
--
-- * 'sRoleARN' - The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that is associated with the stack. During a stack operation, AWS CloudFormation uses this role's credentials to make calls on your behalf.
--
-- * 'sStackName' - The name associated with the stack.
--
-- * 'sCreationTime' - The time at which the stack was created.
--
-- * 'sStackStatus' - Current status of the stack.
stack
    :: Text -- ^ 'sStackName'
    -> UTCTime -- ^ 'sCreationTime'
    -> StackStatus -- ^ 'sStackStatus'
    -> Stack
stack pStackName_ pCreationTime_ pStackStatus_
  = Stack'{_sDisableRollback = Nothing,
           _sLastUpdatedTime = Nothing, _sRootId = Nothing,
           _sNotificationARNs = Nothing,
           _sStackStatusReason = Nothing,
           _sEnableTerminationProtection = Nothing,
           _sChangeSetId = Nothing, _sDeletionTime = Nothing,
           _sOutputs = Nothing, _sParameters = Nothing,
           _sStackId = Nothing, _sDescription = Nothing,
           _sCapabilities = Nothing,
           _sRollbackConfiguration = Nothing, _sTags = Nothing,
           _sTimeoutInMinutes = Nothing, _sParentId = Nothing,
           _sRoleARN = Nothing, _sStackName = pStackName_,
           _sCreationTime = _Time # pCreationTime_,
           _sStackStatus = pStackStatus_}

-- | Boolean to enable or disable rollback on stack creation failures:     * @true@ : disable rollback     * @false@ : enable rollback
sDisableRollback :: Lens' Stack (Maybe Bool)
sDisableRollback = lens _sDisableRollback (\ s a -> s{_sDisableRollback = a})

-- | The time the stack was last updated. This field will only be returned if the stack has been updated at least once.
sLastUpdatedTime :: Lens' Stack (Maybe UTCTime)
sLastUpdatedTime = lens _sLastUpdatedTime (\ s a -> s{_sLastUpdatedTime = a}) . mapping _Time

-- | For nested stacks--stacks created as resources for another stack--the stack ID of the the top-level stack to which the nested stack ultimately belongs. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html Working with Nested Stacks> in the /AWS CloudFormation User Guide/ .
sRootId :: Lens' Stack (Maybe Text)
sRootId = lens _sRootId (\ s a -> s{_sRootId = a})

-- | SNS topic ARNs to which stack related events are published.
sNotificationARNs :: Lens' Stack [Text]
sNotificationARNs = lens _sNotificationARNs (\ s a -> s{_sNotificationARNs = a}) . _Default . _Coerce

-- | Success/failure message associated with the stack status.
sStackStatusReason :: Lens' Stack (Maybe Text)
sStackStatusReason = lens _sStackStatusReason (\ s a -> s{_sStackStatusReason = a})

-- | Whether termination protection is enabled for the stack. For <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html nested stacks> , termination protection is set on the root stack and cannot be changed directly on the nested stack. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html Protecting a Stack From Being Deleted> in the /AWS CloudFormation User Guide/ .
sEnableTerminationProtection :: Lens' Stack (Maybe Bool)
sEnableTerminationProtection = lens _sEnableTerminationProtection (\ s a -> s{_sEnableTerminationProtection = a})

-- | The unique ID of the change set.
sChangeSetId :: Lens' Stack (Maybe Text)
sChangeSetId = lens _sChangeSetId (\ s a -> s{_sChangeSetId = a})

-- | The time the stack was deleted.
sDeletionTime :: Lens' Stack (Maybe UTCTime)
sDeletionTime = lens _sDeletionTime (\ s a -> s{_sDeletionTime = a}) . mapping _Time

-- | A list of output structures.
sOutputs :: Lens' Stack [Output]
sOutputs = lens _sOutputs (\ s a -> s{_sOutputs = a}) . _Default . _Coerce

-- | A list of @Parameter@ structures.
sParameters :: Lens' Stack [Parameter]
sParameters = lens _sParameters (\ s a -> s{_sParameters = a}) . _Default . _Coerce

-- | Unique identifier of the stack.
sStackId :: Lens' Stack (Maybe Text)
sStackId = lens _sStackId (\ s a -> s{_sStackId = a})

-- | A user-defined description associated with the stack.
sDescription :: Lens' Stack (Maybe Text)
sDescription = lens _sDescription (\ s a -> s{_sDescription = a})

-- | The capabilities allowed in the stack.
sCapabilities :: Lens' Stack [Capability]
sCapabilities = lens _sCapabilities (\ s a -> s{_sCapabilities = a}) . _Default . _Coerce

-- | The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
sRollbackConfiguration :: Lens' Stack (Maybe RollbackConfiguration)
sRollbackConfiguration = lens _sRollbackConfiguration (\ s a -> s{_sRollbackConfiguration = a})

-- | A list of @Tag@ s that specify information about the stack.
sTags :: Lens' Stack [Tag]
sTags = lens _sTags (\ s a -> s{_sTags = a}) . _Default . _Coerce

-- | The amount of time within which stack creation should complete.
sTimeoutInMinutes :: Lens' Stack (Maybe Natural)
sTimeoutInMinutes = lens _sTimeoutInMinutes (\ s a -> s{_sTimeoutInMinutes = a}) . mapping _Nat

-- | For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html Working with Nested Stacks> in the /AWS CloudFormation User Guide/ .
sParentId :: Lens' Stack (Maybe Text)
sParentId = lens _sParentId (\ s a -> s{_sParentId = a})

-- | The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that is associated with the stack. During a stack operation, AWS CloudFormation uses this role's credentials to make calls on your behalf.
sRoleARN :: Lens' Stack (Maybe Text)
sRoleARN = lens _sRoleARN (\ s a -> s{_sRoleARN = a})

-- | The name associated with the stack.
sStackName :: Lens' Stack Text
sStackName = lens _sStackName (\ s a -> s{_sStackName = a})

-- | The time at which the stack was created.
sCreationTime :: Lens' Stack UTCTime
sCreationTime = lens _sCreationTime (\ s a -> s{_sCreationTime = a}) . _Time

-- | Current status of the stack.
sStackStatus :: Lens' Stack StackStatus
sStackStatus = lens _sStackStatus (\ s a -> s{_sStackStatus = a})

instance FromXML Stack where
        parseXML x
          = Stack' <$>
              (x .@? "DisableRollback") <*>
                (x .@? "LastUpdatedTime")
                <*> (x .@? "RootId")
                <*>
                (x .@? "NotificationARNs" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "StackStatusReason")
                <*> (x .@? "EnableTerminationProtection")
                <*> (x .@? "ChangeSetId")
                <*> (x .@? "DeletionTime")
                <*>
                (x .@? "Outputs" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*>
                (x .@? "Parameters" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "StackId")
                <*> (x .@? "Description")
                <*>
                (x .@? "Capabilities" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "RollbackConfiguration")
                <*>
                (x .@? "Tags" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "TimeoutInMinutes")
                <*> (x .@? "ParentId")
                <*> (x .@? "RoleARN")
                <*> (x .@ "StackName")
                <*> (x .@ "CreationTime")
                <*> (x .@ "StackStatus")

instance Hashable Stack where

instance NFData Stack where
