{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailChannelRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EmailChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Email Channel Request
--
-- /See:/ 'emailChannelRequest' smart constructor.
data EmailChannelRequest = EmailChannelRequest'{_ecrEnabled
                                                :: !(Maybe Bool),
                                                _ecrFromAddress ::
                                                !(Maybe Text),
                                                _ecrIdentity :: !(Maybe Text),
                                                _ecrRoleARN :: !(Maybe Text)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmailChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecrEnabled' - If the channel is enabled for sending messages.
--
-- * 'ecrFromAddress' - The email address used to send emails from.
--
-- * 'ecrIdentity' - The ARN of an identity verified with SES.
--
-- * 'ecrRoleARN' - The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
emailChannelRequest
    :: EmailChannelRequest
emailChannelRequest
  = EmailChannelRequest'{_ecrEnabled = Nothing,
                         _ecrFromAddress = Nothing, _ecrIdentity = Nothing,
                         _ecrRoleARN = Nothing}

-- | If the channel is enabled for sending messages.
ecrEnabled :: Lens' EmailChannelRequest (Maybe Bool)
ecrEnabled = lens _ecrEnabled (\ s a -> s{_ecrEnabled = a})

-- | The email address used to send emails from.
ecrFromAddress :: Lens' EmailChannelRequest (Maybe Text)
ecrFromAddress = lens _ecrFromAddress (\ s a -> s{_ecrFromAddress = a})

-- | The ARN of an identity verified with SES.
ecrIdentity :: Lens' EmailChannelRequest (Maybe Text)
ecrIdentity = lens _ecrIdentity (\ s a -> s{_ecrIdentity = a})

-- | The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
ecrRoleARN :: Lens' EmailChannelRequest (Maybe Text)
ecrRoleARN = lens _ecrRoleARN (\ s a -> s{_ecrRoleARN = a})

instance Hashable EmailChannelRequest where

instance NFData EmailChannelRequest where

instance ToJSON EmailChannelRequest where
        toJSON EmailChannelRequest'{..}
          = object
              (catMaybes
                 [("Enabled" .=) <$> _ecrEnabled,
                  ("FromAddress" .=) <$> _ecrFromAddress,
                  ("Identity" .=) <$> _ecrIdentity,
                  ("RoleArn" .=) <$> _ecrRoleARN])
