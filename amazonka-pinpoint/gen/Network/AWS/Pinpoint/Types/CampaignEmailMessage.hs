{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignEmailMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignEmailMessage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The email message configuration.
--
-- /See:/ 'campaignEmailMessage' smart constructor.
data CampaignEmailMessage = CampaignEmailMessage'{_cemBody
                                                  :: !(Maybe Text),
                                                  _cemFromAddress ::
                                                  !(Maybe Text),
                                                  _cemHTMLBody :: !(Maybe Text),
                                                  _cemTitle :: !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignEmailMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cemBody' - The email text body.
--
-- * 'cemFromAddress' - The email address used to send the email from. Defaults to use FromAddress specified in the Email Channel.
--
-- * 'cemHTMLBody' - The email html body.
--
-- * 'cemTitle' - The email title (Or subject).
campaignEmailMessage
    :: CampaignEmailMessage
campaignEmailMessage
  = CampaignEmailMessage'{_cemBody = Nothing,
                          _cemFromAddress = Nothing, _cemHTMLBody = Nothing,
                          _cemTitle = Nothing}

-- | The email text body.
cemBody :: Lens' CampaignEmailMessage (Maybe Text)
cemBody = lens _cemBody (\ s a -> s{_cemBody = a})

-- | The email address used to send the email from. Defaults to use FromAddress specified in the Email Channel.
cemFromAddress :: Lens' CampaignEmailMessage (Maybe Text)
cemFromAddress = lens _cemFromAddress (\ s a -> s{_cemFromAddress = a})

-- | The email html body.
cemHTMLBody :: Lens' CampaignEmailMessage (Maybe Text)
cemHTMLBody = lens _cemHTMLBody (\ s a -> s{_cemHTMLBody = a})

-- | The email title (Or subject).
cemTitle :: Lens' CampaignEmailMessage (Maybe Text)
cemTitle = lens _cemTitle (\ s a -> s{_cemTitle = a})

instance FromJSON CampaignEmailMessage where
        parseJSON
          = withObject "CampaignEmailMessage"
              (\ x ->
                 CampaignEmailMessage' <$>
                   (x .:? "Body") <*> (x .:? "FromAddress") <*>
                     (x .:? "HtmlBody")
                     <*> (x .:? "Title"))

instance Hashable CampaignEmailMessage where

instance NFData CampaignEmailMessage where

instance ToJSON CampaignEmailMessage where
        toJSON CampaignEmailMessage'{..}
          = object
              (catMaybes
                 [("Body" .=) <$> _cemBody,
                  ("FromAddress" .=) <$> _cemFromAddress,
                  ("HtmlBody" .=) <$> _cemHTMLBody,
                  ("Title" .=) <$> _cemTitle])
