{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackResourceDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFormation.Types.StackResourceDetail where

import Network.AWS.CloudFormation.Types.ResourceStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains detailed information about the specified stack resource.
--
--
--
-- /See:/ 'stackResourceDetail' smart constructor.
data StackResourceDetail = StackResourceDetail'{_srdPhysicalResourceId
                                                :: !(Maybe Text),
                                                _srdResourceStatusReason ::
                                                !(Maybe Text),
                                                _srdMetadata :: !(Maybe Text),
                                                _srdStackId :: !(Maybe Text),
                                                _srdDescription ::
                                                !(Maybe Text),
                                                _srdStackName :: !(Maybe Text),
                                                _srdLogicalResourceId :: !Text,
                                                _srdResourceType :: !Text,
                                                _srdLastUpdatedTimestamp ::
                                                !ISO8601,
                                                _srdResourceStatus ::
                                                !ResourceStatus}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StackResourceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srdPhysicalResourceId' - The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
--
-- * 'srdResourceStatusReason' - Success/failure message associated with the resource.
--
-- * 'srdMetadata' - The content of the @Metadata@ attribute declared for the resource. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html Metadata Attribute> in the AWS CloudFormation User Guide.
--
-- * 'srdStackId' - Unique identifier of the stack.
--
-- * 'srdDescription' - User defined description associated with the resource.
--
-- * 'srdStackName' - The name associated with the stack.
--
-- * 'srdLogicalResourceId' - The logical name of the resource specified in the template.
--
-- * 'srdResourceType' - Type of resource. ((For more information, go to <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
--
-- * 'srdLastUpdatedTimestamp' - Time the status was updated.
--
-- * 'srdResourceStatus' - Current status of the resource.
stackResourceDetail
    :: Text -- ^ 'srdLogicalResourceId'
    -> Text -- ^ 'srdResourceType'
    -> UTCTime -- ^ 'srdLastUpdatedTimestamp'
    -> ResourceStatus -- ^ 'srdResourceStatus'
    -> StackResourceDetail
stackResourceDetail pLogicalResourceId_
  pResourceType_ pLastUpdatedTimestamp_
  pResourceStatus_
  = StackResourceDetail'{_srdPhysicalResourceId =
                           Nothing,
                         _srdResourceStatusReason = Nothing,
                         _srdMetadata = Nothing, _srdStackId = Nothing,
                         _srdDescription = Nothing, _srdStackName = Nothing,
                         _srdLogicalResourceId = pLogicalResourceId_,
                         _srdResourceType = pResourceType_,
                         _srdLastUpdatedTimestamp =
                           _Time # pLastUpdatedTimestamp_,
                         _srdResourceStatus = pResourceStatus_}

-- | The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
srdPhysicalResourceId :: Lens' StackResourceDetail (Maybe Text)
srdPhysicalResourceId = lens _srdPhysicalResourceId (\ s a -> s{_srdPhysicalResourceId = a})

-- | Success/failure message associated with the resource.
srdResourceStatusReason :: Lens' StackResourceDetail (Maybe Text)
srdResourceStatusReason = lens _srdResourceStatusReason (\ s a -> s{_srdResourceStatusReason = a})

-- | The content of the @Metadata@ attribute declared for the resource. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html Metadata Attribute> in the AWS CloudFormation User Guide.
srdMetadata :: Lens' StackResourceDetail (Maybe Text)
srdMetadata = lens _srdMetadata (\ s a -> s{_srdMetadata = a})

-- | Unique identifier of the stack.
srdStackId :: Lens' StackResourceDetail (Maybe Text)
srdStackId = lens _srdStackId (\ s a -> s{_srdStackId = a})

-- | User defined description associated with the resource.
srdDescription :: Lens' StackResourceDetail (Maybe Text)
srdDescription = lens _srdDescription (\ s a -> s{_srdDescription = a})

-- | The name associated with the stack.
srdStackName :: Lens' StackResourceDetail (Maybe Text)
srdStackName = lens _srdStackName (\ s a -> s{_srdStackName = a})

-- | The logical name of the resource specified in the template.
srdLogicalResourceId :: Lens' StackResourceDetail Text
srdLogicalResourceId = lens _srdLogicalResourceId (\ s a -> s{_srdLogicalResourceId = a})

-- | Type of resource. ((For more information, go to <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
srdResourceType :: Lens' StackResourceDetail Text
srdResourceType = lens _srdResourceType (\ s a -> s{_srdResourceType = a})

-- | Time the status was updated.
srdLastUpdatedTimestamp :: Lens' StackResourceDetail UTCTime
srdLastUpdatedTimestamp = lens _srdLastUpdatedTimestamp (\ s a -> s{_srdLastUpdatedTimestamp = a}) . _Time

-- | Current status of the resource.
srdResourceStatus :: Lens' StackResourceDetail ResourceStatus
srdResourceStatus = lens _srdResourceStatus (\ s a -> s{_srdResourceStatus = a})

instance FromXML StackResourceDetail where
        parseXML x
          = StackResourceDetail' <$>
              (x .@? "PhysicalResourceId") <*>
                (x .@? "ResourceStatusReason")
                <*> (x .@? "Metadata")
                <*> (x .@? "StackId")
                <*> (x .@? "Description")
                <*> (x .@? "StackName")
                <*> (x .@ "LogicalResourceId")
                <*> (x .@ "ResourceType")
                <*> (x .@ "LastUpdatedTimestamp")
                <*> (x .@ "ResourceStatus")

instance Hashable StackResourceDetail where

instance NFData StackResourceDetail where
