{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ImportJobsResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ImportJobsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ImportJobResponse
import Network.AWS.Prelude

-- | Import job list.
--
-- /See:/ 'importJobsResponse' smart constructor.
data ImportJobsResponse = ImportJobsResponse'{_ijNextToken
                                              :: !(Maybe Text),
                                              _ijItem ::
                                              !(Maybe [ImportJobResponse])}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'ijItem' - A list of import jobs for the application.
importJobsResponse
    :: ImportJobsResponse
importJobsResponse
  = ImportJobsResponse'{_ijNextToken = Nothing,
                        _ijItem = Nothing}

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
ijNextToken :: Lens' ImportJobsResponse (Maybe Text)
ijNextToken = lens _ijNextToken (\ s a -> s{_ijNextToken = a})

-- | A list of import jobs for the application.
ijItem :: Lens' ImportJobsResponse [ImportJobResponse]
ijItem = lens _ijItem (\ s a -> s{_ijItem = a}) . _Default . _Coerce

instance FromJSON ImportJobsResponse where
        parseJSON
          = withObject "ImportJobsResponse"
              (\ x ->
                 ImportJobsResponse' <$>
                   (x .:? "NextToken") <*> (x .:? "Item" .!= mempty))

instance Hashable ImportJobsResponse where

instance NFData ImportJobsResponse where
