{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignHook
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.CampaignHook where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Mode
import Network.AWS.Prelude

-- | /See:/ 'campaignHook' smart constructor.
data CampaignHook = CampaignHook'{_chLambdaFunctionName
                                  :: !(Maybe Text),
                                  _chMode :: !(Maybe Mode),
                                  _chWebURL :: !(Maybe Text)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignHook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chLambdaFunctionName' - Lambda function name or arn to be called for delivery
--
-- * 'chMode' - What mode Lambda should be invoked in.
--
-- * 'chWebURL' - Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request
campaignHook
    :: CampaignHook
campaignHook
  = CampaignHook'{_chLambdaFunctionName = Nothing,
                  _chMode = Nothing, _chWebURL = Nothing}

-- | Lambda function name or arn to be called for delivery
chLambdaFunctionName :: Lens' CampaignHook (Maybe Text)
chLambdaFunctionName = lens _chLambdaFunctionName (\ s a -> s{_chLambdaFunctionName = a})

-- | What mode Lambda should be invoked in.
chMode :: Lens' CampaignHook (Maybe Mode)
chMode = lens _chMode (\ s a -> s{_chMode = a})

-- | Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request
chWebURL :: Lens' CampaignHook (Maybe Text)
chWebURL = lens _chWebURL (\ s a -> s{_chWebURL = a})

instance FromJSON CampaignHook where
        parseJSON
          = withObject "CampaignHook"
              (\ x ->
                 CampaignHook' <$>
                   (x .:? "LambdaFunctionName") <*> (x .:? "Mode") <*>
                     (x .:? "WebUrl"))

instance Hashable CampaignHook where

instance NFData CampaignHook where

instance ToJSON CampaignHook where
        toJSON CampaignHook'{..}
          = object
              (catMaybes
                 [("LambdaFunctionName" .=) <$> _chLambdaFunctionName,
                  ("Mode" .=) <$> _chMode,
                  ("WebUrl" .=) <$> _chWebURL])
