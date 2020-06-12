{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ExportJobsResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ExportJobsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ExportJobResponse
import Network.AWS.Prelude

-- | Export job list.
--
-- /See:/ 'exportJobsResponse' smart constructor.
data ExportJobsResponse = ExportJobsResponse'{_ejNextToken
                                              :: !(Maybe Text),
                                              _ejItem ::
                                              !(Maybe [ExportJobResponse])}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'ejItem' - A list of export jobs for the application.
exportJobsResponse
    :: ExportJobsResponse
exportJobsResponse
  = ExportJobsResponse'{_ejNextToken = Nothing,
                        _ejItem = Nothing}

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
ejNextToken :: Lens' ExportJobsResponse (Maybe Text)
ejNextToken = lens _ejNextToken (\ s a -> s{_ejNextToken = a})

-- | A list of export jobs for the application.
ejItem :: Lens' ExportJobsResponse [ExportJobResponse]
ejItem = lens _ejItem (\ s a -> s{_ejItem = a}) . _Default . _Coerce

instance FromJSON ExportJobsResponse where
        parseJSON
          = withObject "ExportJobsResponse"
              (\ x ->
                 ExportJobsResponse' <$>
                   (x .:? "NextToken") <*> (x .:? "Item" .!= mempty))

instance Hashable ExportJobsResponse where

instance NFData ExportJobsResponse where
