{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EnvironmentError
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.EnvironmentError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parent object that contains error information associated with your configuration settings.
--
--
--
-- /See:/ 'environmentError' smart constructor.
data EnvironmentError = EnvironmentError'{_eeErrorCode
                                          :: !(Maybe Text),
                                          _eeMessage ::
                                          !(Maybe (Sensitive Text))}
                          deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnvironmentError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeErrorCode' - The error code returned by the environment error object.
--
-- * 'eeMessage' - The message returned by the environment error object.
environmentError
    :: EnvironmentError
environmentError
  = EnvironmentError'{_eeErrorCode = Nothing,
                      _eeMessage = Nothing}

-- | The error code returned by the environment error object.
eeErrorCode :: Lens' EnvironmentError (Maybe Text)
eeErrorCode = lens _eeErrorCode (\ s a -> s{_eeErrorCode = a})

-- | The message returned by the environment error object.
eeMessage :: Lens' EnvironmentError (Maybe Text)
eeMessage = lens _eeMessage (\ s a -> s{_eeMessage = a}) . mapping _Sensitive

instance FromJSON EnvironmentError where
        parseJSON
          = withObject "EnvironmentError"
              (\ x ->
                 EnvironmentError' <$>
                   (x .:? "ErrorCode") <*> (x .:? "Message"))

instance Hashable EnvironmentError where

instance NFData EnvironmentError where
