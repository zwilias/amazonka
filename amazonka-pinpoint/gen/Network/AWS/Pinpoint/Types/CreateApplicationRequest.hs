{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CreateApplicationRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CreateApplicationRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Application Request.
--
-- /See:/ 'createApplicationRequest' smart constructor.
newtype CreateApplicationRequest = CreateApplicationRequest'{_carName
                                                             :: Maybe Text}
                                     deriving (Eq, Read, Show, Data, Typeable,
                                               Generic)

-- | Creates a value of 'CreateApplicationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carName' - The display name of the application. Used in the Amazon Pinpoint console.
createApplicationRequest
    :: CreateApplicationRequest
createApplicationRequest
  = CreateApplicationRequest'{_carName = Nothing}

-- | The display name of the application. Used in the Amazon Pinpoint console.
carName :: Lens' CreateApplicationRequest (Maybe Text)
carName = lens _carName (\ s a -> s{_carName = a})

instance Hashable CreateApplicationRequest where

instance NFData CreateApplicationRequest where

instance ToJSON CreateApplicationRequest where
        toJSON CreateApplicationRequest'{..}
          = object (catMaybes [("Name" .=) <$> _carName])
