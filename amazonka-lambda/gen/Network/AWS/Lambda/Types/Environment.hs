{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.Environment
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.Environment where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parent object that contains your environment's configuration settings.
--
--
--
-- /See:/ 'environment' smart constructor.
newtype Environment = Environment'{_eVariables ::
                                   Maybe
                                     (Sensitive (Map Text (Sensitive Text)))}
                        deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eVariables' - The key-value pairs that represent your environment's configuration settings.
environment
    :: Environment
environment = Environment'{_eVariables = Nothing}

-- | The key-value pairs that represent your environment's configuration settings.
eVariables :: Lens' Environment (Maybe (HashMap Text Text))
eVariables = lens _eVariables (\ s a -> s{_eVariables = a}) . mapping (_Sensitive . _Map)

instance Hashable Environment where

instance NFData Environment where

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes [("Variables" .=) <$> _eVariables])