{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.AccountDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.AccountDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object containing the member's accountId and email address.
--
-- /See:/ 'accountDetail' smart constructor.
data AccountDetail = AccountDetail'{_adEmail ::
                                    !Text,
                                    _adAccountId :: !Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adEmail' - Member account's email address.
--
-- * 'adAccountId' - Member account ID.
accountDetail
    :: Text -- ^ 'adEmail'
    -> Text -- ^ 'adAccountId'
    -> AccountDetail
accountDetail pEmail_ pAccountId_
  = AccountDetail'{_adEmail = pEmail_,
                   _adAccountId = pAccountId_}

-- | Member account's email address.
adEmail :: Lens' AccountDetail Text
adEmail = lens _adEmail (\ s a -> s{_adEmail = a})

-- | Member account ID.
adAccountId :: Lens' AccountDetail Text
adAccountId = lens _adAccountId (\ s a -> s{_adAccountId = a})

instance Hashable AccountDetail where

instance NFData AccountDetail where

instance ToJSON AccountDetail where
        toJSON AccountDetail'{..}
          = object
              (catMaybes
                 [Just ("email" .= _adEmail),
                  Just ("accountId" .= _adAccountId)])
