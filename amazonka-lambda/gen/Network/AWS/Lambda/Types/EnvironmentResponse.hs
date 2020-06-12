{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EnvironmentResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.EnvironmentResponse where

import Network.AWS.Lambda.Types.EnvironmentError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parent object returned that contains your environment's configuration settings or any error information associated with your configuration settings.
--
--
--
-- /See:/ 'environmentResponse' smart constructor.
data EnvironmentResponse = EnvironmentResponse'{_envVariables
                                                ::
                                                !(Maybe
                                                    (Sensitive
                                                       (Map Text
                                                          (Sensitive Text)))),
                                                _envError ::
                                                !(Maybe EnvironmentError)}
                             deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'envVariables' - The key-value pairs returned that represent your environment's configuration settings or error information.
--
-- * 'envError' - Undocumented member.
environmentResponse
    :: EnvironmentResponse
environmentResponse
  = EnvironmentResponse'{_envVariables = Nothing,
                         _envError = Nothing}

-- | The key-value pairs returned that represent your environment's configuration settings or error information.
envVariables :: Lens' EnvironmentResponse (Maybe (HashMap Text Text))
envVariables = lens _envVariables (\ s a -> s{_envVariables = a}) . mapping (_Sensitive . _Map)

-- | Undocumented member.
envError :: Lens' EnvironmentResponse (Maybe EnvironmentError)
envError = lens _envError (\ s a -> s{_envError = a})

instance FromJSON EnvironmentResponse where
        parseJSON
          = withObject "EnvironmentResponse"
              (\ x ->
                 EnvironmentResponse' <$>
                   (x .:? "Variables" .!= mempty) <*> (x .:? "Error"))

instance Hashable EnvironmentResponse where

instance NFData EnvironmentResponse where
