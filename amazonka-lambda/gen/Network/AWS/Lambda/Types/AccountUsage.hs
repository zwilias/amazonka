{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.AccountUsage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.AccountUsage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides code size usage and function count associated with the current account and region.
--
--
--
-- /See:/ 'accountUsage' smart constructor.
data AccountUsage = AccountUsage'{_auTotalCodeSize ::
                                  !(Maybe Integer),
                                  _auFunctionCount :: !(Maybe Integer)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auTotalCodeSize' - Total size, in bytes, of the account's deployment packages per region.
--
-- * 'auFunctionCount' - The number of your account's existing functions per region.
accountUsage
    :: AccountUsage
accountUsage
  = AccountUsage'{_auTotalCodeSize = Nothing,
                  _auFunctionCount = Nothing}

-- | Total size, in bytes, of the account's deployment packages per region.
auTotalCodeSize :: Lens' AccountUsage (Maybe Integer)
auTotalCodeSize = lens _auTotalCodeSize (\ s a -> s{_auTotalCodeSize = a})

-- | The number of your account's existing functions per region.
auFunctionCount :: Lens' AccountUsage (Maybe Integer)
auFunctionCount = lens _auFunctionCount (\ s a -> s{_auFunctionCount = a})

instance FromJSON AccountUsage where
        parseJSON
          = withObject "AccountUsage"
              (\ x ->
                 AccountUsage' <$>
                   (x .:? "TotalCodeSize") <*> (x .:? "FunctionCount"))

instance Hashable AccountUsage where

instance NFData AccountUsage where
