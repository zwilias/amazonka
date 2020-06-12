{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MsSmoothOutputSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.MsSmoothOutputSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Placeholder documentation for MsSmoothOutputSettings
--
-- /See:/ 'msSmoothOutputSettings' smart constructor.
newtype MsSmoothOutputSettings = MsSmoothOutputSettings'{_msosNameModifier
                                                         :: Maybe Text}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'MsSmoothOutputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msosNameModifier' - String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
msSmoothOutputSettings
    :: MsSmoothOutputSettings
msSmoothOutputSettings
  = MsSmoothOutputSettings'{_msosNameModifier =
                              Nothing}

-- | String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
msosNameModifier :: Lens' MsSmoothOutputSettings (Maybe Text)
msosNameModifier = lens _msosNameModifier (\ s a -> s{_msosNameModifier = a})

instance FromJSON MsSmoothOutputSettings where
        parseJSON
          = withObject "MsSmoothOutputSettings"
              (\ x ->
                 MsSmoothOutputSettings' <$> (x .:? "nameModifier"))

instance Hashable MsSmoothOutputSettings where

instance NFData MsSmoothOutputSettings where

instance ToJSON MsSmoothOutputSettings where
        toJSON MsSmoothOutputSettings'{..}
          = object
              (catMaybes
                 [("nameModifier" .=) <$> _msosNameModifier])
