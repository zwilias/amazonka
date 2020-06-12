{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.Role
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.Role where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.
--
--
--
-- /See:/ 'role'' smart constructor.
data Role = Role'{_rMaxSessionDuration ::
                  !(Maybe Nat),
                  _rAssumeRolePolicyDocument :: !(Maybe Text),
                  _rDescription :: !(Maybe Text), _rPath :: !Text,
                  _rRoleName :: !Text, _rRoleId :: !Text,
                  _rARN :: !Text, _rCreateDate :: !ISO8601}
              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Role' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMaxSessionDuration' - The maximum session duration (in seconds) for the specified role. Anyone who uses the AWS CLI or API to assume the role can specify the duration using the optional @DurationSeconds@ API parameter or @duration-seconds@ CLI parameter.
--
-- * 'rAssumeRolePolicyDocument' - The policy that grants an entity permission to assume the role.
--
-- * 'rDescription' - A description of the role that you provide.
--
-- * 'rPath' - The path to the role. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide. 
--
-- * 'rRoleName' - The friendly name that identifies the role.
--
-- * 'rRoleId' - The stable and unique string identifying the role. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide. 
--
-- * 'rARN' - The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ guide. 
--
-- * 'rCreateDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
role'
    :: Text -- ^ 'rPath'
    -> Text -- ^ 'rRoleName'
    -> Text -- ^ 'rRoleId'
    -> Text -- ^ 'rARN'
    -> UTCTime -- ^ 'rCreateDate'
    -> Role
role' pPath_ pRoleName_ pRoleId_ pARN_ pCreateDate_
  = Role'{_rMaxSessionDuration = Nothing,
          _rAssumeRolePolicyDocument = Nothing,
          _rDescription = Nothing, _rPath = pPath_,
          _rRoleName = pRoleName_, _rRoleId = pRoleId_,
          _rARN = pARN_, _rCreateDate = _Time # pCreateDate_}

-- | The maximum session duration (in seconds) for the specified role. Anyone who uses the AWS CLI or API to assume the role can specify the duration using the optional @DurationSeconds@ API parameter or @duration-seconds@ CLI parameter.
rMaxSessionDuration :: Lens' Role (Maybe Natural)
rMaxSessionDuration = lens _rMaxSessionDuration (\ s a -> s{_rMaxSessionDuration = a}) . mapping _Nat

-- | The policy that grants an entity permission to assume the role.
rAssumeRolePolicyDocument :: Lens' Role (Maybe Text)
rAssumeRolePolicyDocument = lens _rAssumeRolePolicyDocument (\ s a -> s{_rAssumeRolePolicyDocument = a})

-- | A description of the role that you provide.
rDescription :: Lens' Role (Maybe Text)
rDescription = lens _rDescription (\ s a -> s{_rDescription = a})

-- | The path to the role. For more information about paths, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide. 
rPath :: Lens' Role Text
rPath = lens _rPath (\ s a -> s{_rPath = a})

-- | The friendly name that identifies the role.
rRoleName :: Lens' Role Text
rRoleName = lens _rRoleName (\ s a -> s{_rRoleName = a})

-- | The stable and unique string identifying the role. For more information about IDs, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /Using IAM/ guide. 
rRoleId :: Lens' Role Text
rRoleId = lens _rRoleId (\ s a -> s{_rRoleId = a})

-- | The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ guide. 
rARN :: Lens' Role Text
rARN = lens _rARN (\ s a -> s{_rARN = a})

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the role was created.
rCreateDate :: Lens' Role UTCTime
rCreateDate = lens _rCreateDate (\ s a -> s{_rCreateDate = a}) . _Time

instance FromXML Role where
        parseXML x
          = Role' <$>
              (x .@? "MaxSessionDuration") <*>
                (x .@? "AssumeRolePolicyDocument")
                <*> (x .@? "Description")
                <*> (x .@ "Path")
                <*> (x .@ "RoleName")
                <*> (x .@ "RoleId")
                <*> (x .@ "Arn")
                <*> (x .@ "CreateDate")

instance Hashable Role where

instance NFData Role where
