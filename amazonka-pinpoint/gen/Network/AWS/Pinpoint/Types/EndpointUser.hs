{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointUser
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointUser where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Endpoint user specific custom userAttributes
--
-- /See:/ 'endpointUser' smart constructor.
data EndpointUser = EndpointUser'{_euUserAttributes
                                  :: !(Maybe (Map Text [Text])),
                                  _euUserId :: !(Maybe Text)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euUserAttributes' - Custom attributes that describe an end user by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
--
-- * 'euUserId' - The unique ID of the user.
endpointUser
    :: EndpointUser
endpointUser
  = EndpointUser'{_euUserAttributes = Nothing,
                  _euUserId = Nothing}

-- | Custom attributes that describe an end user by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign. The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
euUserAttributes :: Lens' EndpointUser (HashMap Text [Text])
euUserAttributes = lens _euUserAttributes (\ s a -> s{_euUserAttributes = a}) . _Default . _Map

-- | The unique ID of the user.
euUserId :: Lens' EndpointUser (Maybe Text)
euUserId = lens _euUserId (\ s a -> s{_euUserId = a})

instance FromJSON EndpointUser where
        parseJSON
          = withObject "EndpointUser"
              (\ x ->
                 EndpointUser' <$>
                   (x .:? "UserAttributes" .!= mempty) <*>
                     (x .:? "UserId"))

instance Hashable EndpointUser where

instance NFData EndpointUser where

instance ToJSON EndpointUser where
        toJSON EndpointUser'{..}
          = object
              (catMaybes
                 [("UserAttributes" .=) <$> _euUserAttributes,
                  ("UserId" .=) <$> _euUserId])
