{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.UserDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.UserDetail where

import Network.AWS.IAM.Types.AttachedPolicy
import Network.AWS.IAM.Types.PolicyDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
--
--
-- This data type is used as a response element in the 'GetAccountAuthorizationDetails' operation.
--
--
-- /See:/ 'userDetail' smart constructor.
data UserDetail = UserDetail'{_udGroupList ::
                              !(Maybe [Text]),
                              _udARN :: !(Maybe Text), _udPath :: !(Maybe Text),
                              _udCreateDate :: !(Maybe ISO8601),
                              _udUserName :: !(Maybe Text),
                              _udUserId :: !(Maybe Text),
                              _udUserPolicyList :: !(Maybe [PolicyDetail]),
                              _udAttachedManagedPolicies ::
                              !(Maybe [AttachedPolicy])}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udGroupList' - A list of IAM groups that the user is in.
--
-- * 'udARN' - Undocumented member.
--
-- * 'udPath' - The path to the user. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
--
-- * 'udCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the user was created.
--
-- * 'udUserName' - The friendly name identifying the user.
--
-- * 'udUserId' - The stable and unique string identifying the user. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
--
-- * 'udUserPolicyList' - A list of the inline policies embedded in the user.
--
-- * 'udAttachedManagedPolicies' - A list of the managed policies attached to the user.
userDetail
    :: UserDetail
userDetail
  = UserDetail'{_udGroupList = Nothing,
                _udARN = Nothing, _udPath = Nothing,
                _udCreateDate = Nothing, _udUserName = Nothing,
                _udUserId = Nothing, _udUserPolicyList = Nothing,
                _udAttachedManagedPolicies = Nothing}

-- | A list of IAM groups that the user is in.
udGroupList :: Lens' UserDetail [Text]
udGroupList = lens _udGroupList (\ s a -> s{_udGroupList = a}) . _Default . _Coerce

-- | Undocumented member.
udARN :: Lens' UserDetail (Maybe Text)
udARN = lens _udARN (\ s a -> s{_udARN = a})

-- | The path to the user. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
udPath :: Lens' UserDetail (Maybe Text)
udPath = lens _udPath (\ s a -> s{_udPath = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the user was created.
udCreateDate :: Lens' UserDetail (Maybe UTCTime)
udCreateDate = lens _udCreateDate (\ s a -> s{_udCreateDate = a}) . mapping _Time

-- | The friendly name identifying the user.
udUserName :: Lens' UserDetail (Maybe Text)
udUserName = lens _udUserName (\ s a -> s{_udUserName = a})

-- | The stable and unique string identifying the user. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide.
udUserId :: Lens' UserDetail (Maybe Text)
udUserId = lens _udUserId (\ s a -> s{_udUserId = a})

-- | A list of the inline policies embedded in the user.
udUserPolicyList :: Lens' UserDetail [PolicyDetail]
udUserPolicyList = lens _udUserPolicyList (\ s a -> s{_udUserPolicyList = a}) . _Default . _Coerce

-- | A list of the managed policies attached to the user.
udAttachedManagedPolicies :: Lens' UserDetail [AttachedPolicy]
udAttachedManagedPolicies = lens _udAttachedManagedPolicies (\ s a -> s{_udAttachedManagedPolicies = a}) . _Default . _Coerce

instance FromXML UserDetail where
        parseXML x
          = UserDetail' <$>
              (x .@? "GroupList" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*> (x .@? "Arn")
                <*> (x .@? "Path")
                <*> (x .@? "CreateDate")
                <*> (x .@? "UserName")
                <*> (x .@? "UserId")
                <*>
                (x .@? "UserPolicyList" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*>
                (x .@? "AttachedManagedPolicies" .!@ mempty >>=
                   may (parseXMLList "member"))

instance Hashable UserDetail where

instance NFData UserDetail where
