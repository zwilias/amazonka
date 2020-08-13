{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.DescribeFargateProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns descriptive information about an AWS Fargate profile.
--
--
module Network.AWS.EKS.DescribeFargateProfile
    (
    -- * Creating a Request
      describeFargateProfile
    , DescribeFargateProfile
    -- * Request Lenses
    , dfpClusterName
    , dfpFargateProfileName

    -- * Destructuring the Response
    , describeFargateProfileResponse
    , DescribeFargateProfileResponse
    -- * Response Lenses
    , dfprsFargateProfile
    , dfprsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFargateProfile' smart constructor.
data DescribeFargateProfile = DescribeFargateProfile'{_dfpClusterName
                                                      :: !Text,
                                                      _dfpFargateProfileName ::
                                                      !Text}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'DescribeFargateProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfpClusterName' - The name of the Amazon EKS cluster associated with the Fargate profile.
--
-- * 'dfpFargateProfileName' - The name of the Fargate profile to describe.
describeFargateProfile
    :: Text -- ^ 'dfpClusterName'
    -> Text -- ^ 'dfpFargateProfileName'
    -> DescribeFargateProfile
describeFargateProfile pClusterName_
  pFargateProfileName_
  = DescribeFargateProfile'{_dfpClusterName =
                              pClusterName_,
                            _dfpFargateProfileName = pFargateProfileName_}

-- | The name of the Amazon EKS cluster associated with the Fargate profile.
dfpClusterName :: Lens' DescribeFargateProfile Text
dfpClusterName = lens _dfpClusterName (\ s a -> s{_dfpClusterName = a})

-- | The name of the Fargate profile to describe.
dfpFargateProfileName :: Lens' DescribeFargateProfile Text
dfpFargateProfileName = lens _dfpFargateProfileName (\ s a -> s{_dfpFargateProfileName = a})

instance AWSRequest DescribeFargateProfile where
        type Rs DescribeFargateProfile =
             DescribeFargateProfileResponse
        request = get eks
        response
          = receiveJSON
              (\ s h x ->
                 DescribeFargateProfileResponse' <$>
                   (x .?> "fargateProfile") <*> (pure (fromEnum s)))

instance Hashable DescribeFargateProfile where

instance NFData DescribeFargateProfile where

instance ToHeaders DescribeFargateProfile where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DescribeFargateProfile where
        toPath DescribeFargateProfile'{..}
          = mconcat
              ["/clusters/", toBS _dfpClusterName,
               "/fargate-profiles/", toBS _dfpFargateProfileName]

instance ToQuery DescribeFargateProfile where
        toQuery = const mempty

-- | /See:/ 'describeFargateProfileResponse' smart constructor.
data DescribeFargateProfileResponse = DescribeFargateProfileResponse'{_dfprsFargateProfile
                                                                      ::
                                                                      !(Maybe
                                                                          FargateProfile),
                                                                      _dfprsResponseStatus
                                                                      :: !Int}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'DescribeFargateProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfprsFargateProfile' - The full description of your Fargate profile.
--
-- * 'dfprsResponseStatus' - -- | The response status code.
describeFargateProfileResponse
    :: Int -- ^ 'dfprsResponseStatus'
    -> DescribeFargateProfileResponse
describeFargateProfileResponse pResponseStatus_
  = DescribeFargateProfileResponse'{_dfprsFargateProfile
                                      = Nothing,
                                    _dfprsResponseStatus = pResponseStatus_}

-- | The full description of your Fargate profile.
dfprsFargateProfile :: Lens' DescribeFargateProfileResponse (Maybe FargateProfile)
dfprsFargateProfile = lens _dfprsFargateProfile (\ s a -> s{_dfprsFargateProfile = a})

-- | -- | The response status code.
dfprsResponseStatus :: Lens' DescribeFargateProfileResponse Int
dfprsResponseStatus = lens _dfprsResponseStatus (\ s a -> s{_dfprsResponseStatus = a})

instance NFData DescribeFargateProfileResponse where
