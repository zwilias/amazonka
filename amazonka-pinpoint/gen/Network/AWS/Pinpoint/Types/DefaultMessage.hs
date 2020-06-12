{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DefaultMessage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.DefaultMessage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Default Message across push notification, email, and sms.
--
-- /See:/ 'defaultMessage' smart constructor.
data DefaultMessage = DefaultMessage'{_dmSubstitutions
                                      :: !(Maybe (Map Text [Text])),
                                      _dmBody :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefaultMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmSubstitutions' - Default message substitutions. Can be overridden by individual address substitutions.
--
-- * 'dmBody' - The message body of the notification, the email body or the text message.
defaultMessage
    :: DefaultMessage
defaultMessage
  = DefaultMessage'{_dmSubstitutions = Nothing,
                    _dmBody = Nothing}

-- | Default message substitutions. Can be overridden by individual address substitutions.
dmSubstitutions :: Lens' DefaultMessage (HashMap Text [Text])
dmSubstitutions = lens _dmSubstitutions (\ s a -> s{_dmSubstitutions = a}) . _Default . _Map

-- | The message body of the notification, the email body or the text message.
dmBody :: Lens' DefaultMessage (Maybe Text)
dmBody = lens _dmBody (\ s a -> s{_dmBody = a})

instance Hashable DefaultMessage where

instance NFData DefaultMessage where

instance ToJSON DefaultMessage where
        toJSON DefaultMessage'{..}
          = object
              (catMaybes
                 [("Substitutions" .=) <$> _dmSubstitutions,
                  ("Body" .=) <$> _dmBody])
