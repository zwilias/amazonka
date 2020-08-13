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
-- Module      : Network.AWS.EKS.DeleteFargateProfile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AWS Fargate profile.
--
--
-- When you delete a Fargate profile, any pods running on Fargate that were created with the profile are deleted. If those pods match another Fargate profile, then they are scheduled on Fargate with that profile. If they no longer match any Fargate profiles, then they are not scheduled on Fargate and they may remain in a pending state.
--
-- Only one Fargate profile in a cluster can be in the @DELETING@ status at a time. You must wait for a Fargate profile to finish deleting before you can delete any other profiles in that cluster.
--
module Network.AWS.EKS.DeleteFargateProfile
    (
    -- * Creating a Request
      deleteFargateProfile
    , DeleteFargateProfile
    -- * Request Lenses
    , dClusterName
    , dFargateProfileName

    -- * Destructuring the Response
    , deleteFargateProfileResponse
    , DeleteFargateProfileResponse
    -- * Response Lenses
    , delrsFargateProfile
    , delrsResponseStatus
    ) where

import Network.AWS.EKS.Types
import Network.AWS.EKS.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteFargateProfile' smart constructor.
data DeleteFargateProfile = DeleteFargateProfile'{_dClusterName
                                                  :: !Text,
                                                  _dFargateProfileName :: !Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteFargateProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dClusterName' - The name of the Amazon EKS cluster associated with the Fargate profile to delete.
--
-- * 'dFargateProfileName' - The name of the Fargate profile to delete.
deleteFargateProfile
    :: Text -- ^ 'dClusterName'
    -> Text -- ^ 'dFargateProfileName'
    -> DeleteFargateProfile
deleteFargateProfile pClusterName_
  pFargateProfileName_
  = DeleteFargateProfile'{_dClusterName =
                            pClusterName_,
                          _dFargateProfileName = pFargateProfileName_}

-- | The name of the Amazon EKS cluster associated with the Fargate profile to delete.
dClusterName :: Lens' DeleteFargateProfile Text
dClusterName = lens _dClusterName (\ s a -> s{_dClusterName = a})

-- | The name of the Fargate profile to delete.
dFargateProfileName :: Lens' DeleteFargateProfile Text
dFargateProfileName = lens _dFargateProfileName (\ s a -> s{_dFargateProfileName = a})

instance AWSRequest DeleteFargateProfile where
        type Rs DeleteFargateProfile =
             DeleteFargateProfileResponse
        request = delete eks
        response
          = receiveJSON
              (\ s h x ->
                 DeleteFargateProfileResponse' <$>
                   (x .?> "fargateProfile") <*> (pure (fromEnum s)))

instance Hashable DeleteFargateProfile where

instance NFData DeleteFargateProfile where

instance ToHeaders DeleteFargateProfile where
        toHeaders
          = const
              (mconcat
                 ["Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToPath DeleteFargateProfile where
        toPath DeleteFargateProfile'{..}
          = mconcat
              ["/clusters/", toBS _dClusterName,
               "/fargate-profiles/", toBS _dFargateProfileName]

instance ToQuery DeleteFargateProfile where
        toQuery = const mempty

-- | /See:/ 'deleteFargateProfileResponse' smart constructor.
data DeleteFargateProfileResponse = DeleteFargateProfileResponse'{_delrsFargateProfile
                                                                  ::
                                                                  !(Maybe
                                                                      FargateProfile),
                                                                  _delrsResponseStatus
                                                                  :: !Int}
                                      deriving (Eq, Read, Show, Data, Typeable,
                                                Generic)

-- | Creates a value of 'DeleteFargateProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsFargateProfile' - The deleted Fargate profile.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteFargateProfileResponse
    :: Int -- ^ 'delrsResponseStatus'
    -> DeleteFargateProfileResponse
deleteFargateProfileResponse pResponseStatus_
  = DeleteFargateProfileResponse'{_delrsFargateProfile
                                    = Nothing,
                                  _delrsResponseStatus = pResponseStatus_}

-- | The deleted Fargate profile.
delrsFargateProfile :: Lens' DeleteFargateProfileResponse (Maybe FargateProfile)
delrsFargateProfile = lens _delrsFargateProfile (\ s a -> s{_delrsFargateProfile = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteFargateProfileResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\ s a -> s{_delrsResponseStatus = a})

instance NFData DeleteFargateProfileResponse where
