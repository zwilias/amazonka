{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.RoleDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.RoleDetail where

import Network.AWS.IAM.Types.AttachedPolicy
import Network.AWS.IAM.Types.InstanceProfile
import Network.AWS.IAM.Types.PolicyDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an IAM role, including all of the role's policies.
--
--
-- This data type is used as a response element in the 'GetAccountAuthorizationDetails' operation.
--
--
-- /See:/ 'roleDetail' smart constructor.
data RoleDetail = RoleDetail'{_rdAssumeRolePolicyDocument
                              :: !(Maybe Text),
                              _rdARN :: !(Maybe Text), _rdPath :: !(Maybe Text),
                              _rdInstanceProfileList ::
                              !(Maybe [InstanceProfile]),
                              _rdCreateDate :: !(Maybe ISO8601),
                              _rdRoleName :: !(Maybe Text),
                              _rdRoleId :: !(Maybe Text),
                              _rdRolePolicyList :: !(Maybe [PolicyDetail]),
                              _rdAttachedManagedPolicies ::
                              !(Maybe [AttachedPolicy])}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RoleDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdAssumeRolePolicyDocument' - The trust policy that grants permission to assume the role.
--
-- * 'rdARN' - Undocumented member.
--
-- * 'rdPath' - The path to the role. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
--
-- * 'rdInstanceProfileList' - A list of instance profiles that contain this role.
--
-- * 'rdCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
--
-- * 'rdRoleName' - The friendly name that identifies the role.
--
-- * 'rdRoleId' - The stable and unique string identifying the role. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
--
-- * 'rdRolePolicyList' - A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.
--
-- * 'rdAttachedManagedPolicies' - A list of managed policies attached to the role. These policies are the role's access (permissions) policies.
roleDetail
    :: RoleDetail
roleDetail
  = RoleDetail'{_rdAssumeRolePolicyDocument = Nothing,
                _rdARN = Nothing, _rdPath = Nothing,
                _rdInstanceProfileList = Nothing,
                _rdCreateDate = Nothing, _rdRoleName = Nothing,
                _rdRoleId = Nothing, _rdRolePolicyList = Nothing,
                _rdAttachedManagedPolicies = Nothing}

-- | The trust policy that grants permission to assume the role.
rdAssumeRolePolicyDocument :: Lens' RoleDetail (Maybe Text)
rdAssumeRolePolicyDocument = lens _rdAssumeRolePolicyDocument (\ s a -> s{_rdAssumeRolePolicyDocument = a})

-- | Undocumented member.
rdARN :: Lens' RoleDetail (Maybe Text)
rdARN = lens _rdARN (\ s a -> s{_rdARN = a})

-- | The path to the role. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
rdPath :: Lens' RoleDetail (Maybe Text)
rdPath = lens _rdPath (\ s a -> s{_rdPath = a})

-- | A list of instance profiles that contain this role.
rdInstanceProfileList :: Lens' RoleDetail [InstanceProfile]
rdInstanceProfileList = lens _rdInstanceProfileList (\ s a -> s{_rdInstanceProfileList = a}) . _Default . _Coerce

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
rdCreateDate :: Lens' RoleDetail (Maybe UTCTime)
rdCreateDate = lens _rdCreateDate (\ s a -> s{_rdCreateDate = a}) . mapping _Time

-- | The friendly name that identifies the role.
rdRoleName :: Lens' RoleDetail (Maybe Text)
rdRoleName = lens _rdRoleName (\ s a -> s{_rdRoleName = a})

-- | The stable and unique string identifying the role. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
rdRoleId :: Lens' RoleDetail (Maybe Text)
rdRoleId = lens _rdRoleId (\ s a -> s{_rdRoleId = a})

-- | A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.
rdRolePolicyList :: Lens' RoleDetail [PolicyDetail]
rdRolePolicyList = lens _rdRolePolicyList (\ s a -> s{_rdRolePolicyList = a}) . _Default . _Coerce

-- | A list of managed policies attached to the role. These policies are the role's access (permissions) policies.
rdAttachedManagedPolicies :: Lens' RoleDetail [AttachedPolicy]
rdAttachedManagedPolicies = lens _rdAttachedManagedPolicies (\ s a -> s{_rdAttachedManagedPolicies = a}) . _Default . _Coerce

instance FromXML RoleDetail where
        parseXML x
          = RoleDetail' <$>
              (x .@? "AssumeRolePolicyDocument") <*> (x .@? "Arn")
                <*> (x .@? "Path")
                <*>
                (x .@? "InstanceProfileList" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "CreateDate")
                <*> (x .@? "RoleName")
                <*> (x .@? "RoleId")
                <*>
                (x .@? "RolePolicyList" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*>
                (x .@? "AttachedManagedPolicies" .!@ mempty >>=
                   may (parseXMLList "member"))

instance Hashable RoleDetail where

instance NFData RoleDetail where
