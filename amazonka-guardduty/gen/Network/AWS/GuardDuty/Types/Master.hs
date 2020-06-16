{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Master
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.Master where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about the master account.
--
-- /See:/ 'master' smart constructor.
data Master = Master'{_masInvitedAt :: !(Maybe Text),
                      _masRelationshipStatus :: !(Maybe Text),
                      _masInvitationId :: !(Maybe Text),
                      _masAccountId :: !(Maybe Text)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Master' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'masInvitedAt' - Timestamp at which the invitation was sent
--
-- * 'masRelationshipStatus' - The status of the relationship between the master and member accounts.
--
-- * 'masInvitationId' - This value is used to validate the master account to the member account.
--
-- * 'masAccountId' - Master account ID
master
    :: Master
master
  = Master'{_masInvitedAt = Nothing,
            _masRelationshipStatus = Nothing,
            _masInvitationId = Nothing, _masAccountId = Nothing}

-- | Timestamp at which the invitation was sent
masInvitedAt :: Lens' Master (Maybe Text)
masInvitedAt = lens _masInvitedAt (\ s a -> s{_masInvitedAt = a})

-- | The status of the relationship between the master and member accounts.
masRelationshipStatus :: Lens' Master (Maybe Text)
masRelationshipStatus = lens _masRelationshipStatus (\ s a -> s{_masRelationshipStatus = a})

-- | This value is used to validate the master account to the member account.
masInvitationId :: Lens' Master (Maybe Text)
masInvitationId = lens _masInvitationId (\ s a -> s{_masInvitationId = a})

-- | Master account ID
masAccountId :: Lens' Master (Maybe Text)
masAccountId = lens _masAccountId (\ s a -> s{_masAccountId = a})

instance FromJSON Master where
        parseJSON
          = withObject "Master"
              (\ x ->
                 Master' <$>
                   (x .:? "invitedAt") <*> (x .:? "relationshipStatus")
                     <*> (x .:? "invitationId")
                     <*> (x .:? "accountId"))

instance Hashable Master where

instance NFData Master where