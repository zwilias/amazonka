{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignsResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignsResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.CampaignResponse
import Network.AWS.Prelude

-- | List of available campaigns.
--
-- /See:/ 'campaignsResponse' smart constructor.
data CampaignsResponse = CampaignsResponse'{_cNextToken
                                            :: !(Maybe Text),
                                            _cItem ::
                                            !(Maybe [CampaignResponse])}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'cItem' - A list of campaigns.
campaignsResponse
    :: CampaignsResponse
campaignsResponse
  = CampaignsResponse'{_cNextToken = Nothing,
                       _cItem = Nothing}

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
cNextToken :: Lens' CampaignsResponse (Maybe Text)
cNextToken = lens _cNextToken (\ s a -> s{_cNextToken = a})

-- | A list of campaigns.
cItem :: Lens' CampaignsResponse [CampaignResponse]
cItem = lens _cItem (\ s a -> s{_cItem = a}) . _Default . _Coerce

instance FromJSON CampaignsResponse where
        parseJSON
          = withObject "CampaignsResponse"
              (\ x ->
                 CampaignsResponse' <$>
                   (x .:? "NextToken") <*> (x .:? "Item" .!= mempty))

instance Hashable CampaignsResponse where

instance NFData CampaignsResponse where
