{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Member
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.Member where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about the member account.
--
-- /See:/ 'member' smart constructor.
data Member = Member'{_mInvitedAt :: !(Maybe Text),
                      _mDetectorId :: !(Maybe Text), _mEmail :: !Text,
                      _mAccountId :: !Text, _mMasterId :: !Text,
                      _mUpdatedAt :: !Text, _mRelationshipStatus :: !Text}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Member' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mInvitedAt' - Timestamp at which the invitation was sent
--
-- * 'mDetectorId' - Undocumented member.
--
-- * 'mEmail' - Member account's email address.
--
-- * 'mAccountId' - Undocumented member.
--
-- * 'mMasterId' - Undocumented member.
--
-- * 'mUpdatedAt' - Undocumented member.
--
-- * 'mRelationshipStatus' - The status of the relationship between the member and the master.
member
    :: Text -- ^ 'mEmail'
    -> Text -- ^ 'mAccountId'
    -> Text -- ^ 'mMasterId'
    -> Text -- ^ 'mUpdatedAt'
    -> Text -- ^ 'mRelationshipStatus'
    -> Member
member pEmail_ pAccountId_ pMasterId_ pUpdatedAt_
  pRelationshipStatus_
  = Member'{_mInvitedAt = Nothing,
            _mDetectorId = Nothing, _mEmail = pEmail_,
            _mAccountId = pAccountId_, _mMasterId = pMasterId_,
            _mUpdatedAt = pUpdatedAt_,
            _mRelationshipStatus = pRelationshipStatus_}

-- | Timestamp at which the invitation was sent
mInvitedAt :: Lens' Member (Maybe Text)
mInvitedAt = lens _mInvitedAt (\ s a -> s{_mInvitedAt = a})

-- | Undocumented member.
mDetectorId :: Lens' Member (Maybe Text)
mDetectorId = lens _mDetectorId (\ s a -> s{_mDetectorId = a})

-- | Member account's email address.
mEmail :: Lens' Member Text
mEmail = lens _mEmail (\ s a -> s{_mEmail = a})

-- | Undocumented member.
mAccountId :: Lens' Member Text
mAccountId = lens _mAccountId (\ s a -> s{_mAccountId = a})

-- | Undocumented member.
mMasterId :: Lens' Member Text
mMasterId = lens _mMasterId (\ s a -> s{_mMasterId = a})

-- | Undocumented member.
mUpdatedAt :: Lens' Member Text
mUpdatedAt = lens _mUpdatedAt (\ s a -> s{_mUpdatedAt = a})

-- | The status of the relationship between the member and the master.
mRelationshipStatus :: Lens' Member Text
mRelationshipStatus = lens _mRelationshipStatus (\ s a -> s{_mRelationshipStatus = a})

instance FromJSON Member where
        parseJSON
          = withObject "Member"
              (\ x ->
                 Member' <$>
                   (x .:? "invitedAt") <*> (x .:? "detectorId") <*>
                     (x .: "email")
                     <*> (x .: "accountId")
                     <*> (x .: "masterId")
                     <*> (x .: "updatedAt")
                     <*> (x .: "relationshipStatus"))

instance Hashable Member where

instance NFData Member where
