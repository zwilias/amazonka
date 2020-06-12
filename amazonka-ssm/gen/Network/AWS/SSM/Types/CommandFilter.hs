{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.CommandFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.CommandFilterKey

-- | Describes a command filter.
--
--
--
-- /See:/ 'commandFilter' smart constructor.
data CommandFilter = CommandFilter'{_cfKey ::
                                    !CommandFilterKey,
                                    _cfValue :: !Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommandFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfKey' - The name of the filter.
--
-- * 'cfValue' - The filter value. 
commandFilter
    :: CommandFilterKey -- ^ 'cfKey'
    -> Text -- ^ 'cfValue'
    -> CommandFilter
commandFilter pKey_ pValue_
  = CommandFilter'{_cfKey = pKey_, _cfValue = pValue_}

-- | The name of the filter.
cfKey :: Lens' CommandFilter CommandFilterKey
cfKey = lens _cfKey (\ s a -> s{_cfKey = a})

-- | The filter value. 
cfValue :: Lens' CommandFilter Text
cfValue = lens _cfValue (\ s a -> s{_cfValue = a})

instance Hashable CommandFilter where

instance NFData CommandFilter where

instance ToJSON CommandFilter where
        toJSON CommandFilter'{..}
          = object
              (catMaybes
                 [Just ("key" .= _cfKey), Just ("value" .= _cfValue)])
