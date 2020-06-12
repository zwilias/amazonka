{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ApplicationResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Application Response.
--
-- /See:/ 'applicationResponse' smart constructor.
data ApplicationResponse = ApplicationResponse'{_appName
                                                :: !(Maybe Text),
                                                _appId :: !(Maybe Text)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appName' - The display name of the application.
--
-- * 'appId' - The unique application ID.
applicationResponse
    :: ApplicationResponse
applicationResponse
  = ApplicationResponse'{_appName = Nothing,
                         _appId = Nothing}

-- | The display name of the application.
appName :: Lens' ApplicationResponse (Maybe Text)
appName = lens _appName (\ s a -> s{_appName = a})

-- | The unique application ID.
appId :: Lens' ApplicationResponse (Maybe Text)
appId = lens _appId (\ s a -> s{_appId = a})

instance FromJSON ApplicationResponse where
        parseJSON
          = withObject "ApplicationResponse"
              (\ x ->
                 ApplicationResponse' <$>
                   (x .:? "Name") <*> (x .:? "Id"))

instance Hashable ApplicationResponse where

instance NFData ApplicationResponse where
