{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputAttachment
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.InputAttachment where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputSettings
import Network.AWS.Prelude

-- | Placeholder documentation for InputAttachment
--
-- /See:/ 'inputAttachment' smart constructor.
data InputAttachment = InputAttachment'{_iaInputId ::
                                        !(Maybe Text),
                                        _iaInputSettings ::
                                        !(Maybe InputSettings)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaInputId' - The ID of the input
--
-- * 'iaInputSettings' - Settings of an input (caption selector, etc.)
inputAttachment
    :: InputAttachment
inputAttachment
  = InputAttachment'{_iaInputId = Nothing,
                     _iaInputSettings = Nothing}

-- | The ID of the input
iaInputId :: Lens' InputAttachment (Maybe Text)
iaInputId = lens _iaInputId (\ s a -> s{_iaInputId = a})

-- | Settings of an input (caption selector, etc.)
iaInputSettings :: Lens' InputAttachment (Maybe InputSettings)
iaInputSettings = lens _iaInputSettings (\ s a -> s{_iaInputSettings = a})

instance FromJSON InputAttachment where
        parseJSON
          = withObject "InputAttachment"
              (\ x ->
                 InputAttachment' <$>
                   (x .:? "inputId") <*> (x .:? "inputSettings"))

instance Hashable InputAttachment where

instance NFData InputAttachment where

instance ToJSON InputAttachment where
        toJSON InputAttachment'{..}
          = object
              (catMaybes
                 [("inputId" .=) <$> _iaInputId,
                  ("inputSettings" .=) <$> _iaInputSettings])
