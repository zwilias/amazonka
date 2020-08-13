{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.EKS
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.EKS where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.EKS
import Test.AWS.EKS.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeFargateProfile $
--             describeFargateProfile
--
--         , requestDescribeUpdate $
--             describeUpdate
--
--         , requestUpdateNodegroupConfig $
--             updateNodegroupConfig
--
--         , requestDescribeCluster $
--             describeCluster
--
--         , requestDescribeNodegroup $
--             describeNodegroup
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateFargateProfile $
--             createFargateProfile
--
--         , requestDeleteFargateProfile $
--             deleteFargateProfile
--
--         , requestDeleteCluster $
--             deleteCluster
--
--         , requestCreateCluster $
--             createCluster
--
--         , requestUpdateClusterConfig $
--             updateClusterConfig
--
--         , requestUpdateClusterVersion $
--             updateClusterVersion
--
--         , requestUpdateNodegroupVersion $
--             updateNodegroupVersion
--
--         , requestListUpdates $
--             listUpdates
--
--         , requestTagResource $
--             tagResource
--
--         , requestListFargateProfiles $
--             listFargateProfiles
--
--         , requestListClusters $
--             listClusters
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCreateNodegroup $
--             createNodegroup
--
--         , requestListNodegroups $
--             listNodegroups
--
--         , requestDeleteNodegroup $
--             deleteNodegroup
--
--           ]

--     , testGroup "response"
--         [ responseDescribeFargateProfile $
--             describeFargateProfileResponse
--
--         , responseDescribeUpdate $
--             describeUpdateResponse
--
--         , responseUpdateNodegroupConfig $
--             updateNodegroupConfigResponse
--
--         , responseDescribeCluster $
--             describeClusterResponse
--
--         , responseDescribeNodegroup $
--             describeNodegroupResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateFargateProfile $
--             createFargateProfileResponse
--
--         , responseDeleteFargateProfile $
--             deleteFargateProfileResponse
--
--         , responseDeleteCluster $
--             deleteClusterResponse
--
--         , responseCreateCluster $
--             createClusterResponse
--
--         , responseUpdateClusterConfig $
--             updateClusterConfigResponse
--
--         , responseUpdateClusterVersion $
--             updateClusterVersionResponse
--
--         , responseUpdateNodegroupVersion $
--             updateNodegroupVersionResponse
--
--         , responseListUpdates $
--             listUpdatesResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListFargateProfiles $
--             listFargateProfilesResponse
--
--         , responseListClusters $
--             listClustersResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCreateNodegroup $
--             createNodegroupResponse
--
--         , responseListNodegroups $
--             listNodegroupsResponse
--
--         , responseDeleteNodegroup $
--             deleteNodegroupResponse
--
--           ]
--     ]

-- Requests

requestDescribeFargateProfile :: DescribeFargateProfile -> TestTree
requestDescribeFargateProfile = req
    "DescribeFargateProfile"
    "fixture/DescribeFargateProfile.yaml"

requestDescribeUpdate :: DescribeUpdate -> TestTree
requestDescribeUpdate = req
    "DescribeUpdate"
    "fixture/DescribeUpdate.yaml"

requestUpdateNodegroupConfig :: UpdateNodegroupConfig -> TestTree
requestUpdateNodegroupConfig = req
    "UpdateNodegroupConfig"
    "fixture/UpdateNodegroupConfig.yaml"

requestDescribeCluster :: DescribeCluster -> TestTree
requestDescribeCluster = req
    "DescribeCluster"
    "fixture/DescribeCluster.yaml"

requestDescribeNodegroup :: DescribeNodegroup -> TestTree
requestDescribeNodegroup = req
    "DescribeNodegroup"
    "fixture/DescribeNodegroup.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource = req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateFargateProfile :: CreateFargateProfile -> TestTree
requestCreateFargateProfile = req
    "CreateFargateProfile"
    "fixture/CreateFargateProfile.yaml"

requestDeleteFargateProfile :: DeleteFargateProfile -> TestTree
requestDeleteFargateProfile = req
    "DeleteFargateProfile"
    "fixture/DeleteFargateProfile.yaml"

requestDeleteCluster :: DeleteCluster -> TestTree
requestDeleteCluster = req
    "DeleteCluster"
    "fixture/DeleteCluster.yaml"

requestCreateCluster :: CreateCluster -> TestTree
requestCreateCluster = req
    "CreateCluster"
    "fixture/CreateCluster.yaml"

requestUpdateClusterConfig :: UpdateClusterConfig -> TestTree
requestUpdateClusterConfig = req
    "UpdateClusterConfig"
    "fixture/UpdateClusterConfig.yaml"

requestUpdateClusterVersion :: UpdateClusterVersion -> TestTree
requestUpdateClusterVersion = req
    "UpdateClusterVersion"
    "fixture/UpdateClusterVersion.yaml"

requestUpdateNodegroupVersion :: UpdateNodegroupVersion -> TestTree
requestUpdateNodegroupVersion = req
    "UpdateNodegroupVersion"
    "fixture/UpdateNodegroupVersion.yaml"

requestListUpdates :: ListUpdates -> TestTree
requestListUpdates = req
    "ListUpdates"
    "fixture/ListUpdates.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource = req
    "TagResource"
    "fixture/TagResource.yaml"

requestListFargateProfiles :: ListFargateProfiles -> TestTree
requestListFargateProfiles = req
    "ListFargateProfiles"
    "fixture/ListFargateProfiles.yaml"

requestListClusters :: ListClusters -> TestTree
requestListClusters = req
    "ListClusters"
    "fixture/ListClusters.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource = req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateNodegroup :: CreateNodegroup -> TestTree
requestCreateNodegroup = req
    "CreateNodegroup"
    "fixture/CreateNodegroup.yaml"

requestListNodegroups :: ListNodegroups -> TestTree
requestListNodegroups = req
    "ListNodegroups"
    "fixture/ListNodegroups.yaml"

requestDeleteNodegroup :: DeleteNodegroup -> TestTree
requestDeleteNodegroup = req
    "DeleteNodegroup"
    "fixture/DeleteNodegroup.yaml"

-- Responses

responseDescribeFargateProfile :: DescribeFargateProfileResponse -> TestTree
responseDescribeFargateProfile = res
    "DescribeFargateProfileResponse"
    "fixture/DescribeFargateProfileResponse.proto"
    eks
    (Proxy :: Proxy DescribeFargateProfile)

responseDescribeUpdate :: DescribeUpdateResponse -> TestTree
responseDescribeUpdate = res
    "DescribeUpdateResponse"
    "fixture/DescribeUpdateResponse.proto"
    eks
    (Proxy :: Proxy DescribeUpdate)

responseUpdateNodegroupConfig :: UpdateNodegroupConfigResponse -> TestTree
responseUpdateNodegroupConfig = res
    "UpdateNodegroupConfigResponse"
    "fixture/UpdateNodegroupConfigResponse.proto"
    eks
    (Proxy :: Proxy UpdateNodegroupConfig)

responseDescribeCluster :: DescribeClusterResponse -> TestTree
responseDescribeCluster = res
    "DescribeClusterResponse"
    "fixture/DescribeClusterResponse.proto"
    eks
    (Proxy :: Proxy DescribeCluster)

responseDescribeNodegroup :: DescribeNodegroupResponse -> TestTree
responseDescribeNodegroup = res
    "DescribeNodegroupResponse"
    "fixture/DescribeNodegroupResponse.proto"
    eks
    (Proxy :: Proxy DescribeNodegroup)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource = res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    eks
    (Proxy :: Proxy ListTagsForResource)

responseCreateFargateProfile :: CreateFargateProfileResponse -> TestTree
responseCreateFargateProfile = res
    "CreateFargateProfileResponse"
    "fixture/CreateFargateProfileResponse.proto"
    eks
    (Proxy :: Proxy CreateFargateProfile)

responseDeleteFargateProfile :: DeleteFargateProfileResponse -> TestTree
responseDeleteFargateProfile = res
    "DeleteFargateProfileResponse"
    "fixture/DeleteFargateProfileResponse.proto"
    eks
    (Proxy :: Proxy DeleteFargateProfile)

responseDeleteCluster :: DeleteClusterResponse -> TestTree
responseDeleteCluster = res
    "DeleteClusterResponse"
    "fixture/DeleteClusterResponse.proto"
    eks
    (Proxy :: Proxy DeleteCluster)

responseCreateCluster :: CreateClusterResponse -> TestTree
responseCreateCluster = res
    "CreateClusterResponse"
    "fixture/CreateClusterResponse.proto"
    eks
    (Proxy :: Proxy CreateCluster)

responseUpdateClusterConfig :: UpdateClusterConfigResponse -> TestTree
responseUpdateClusterConfig = res
    "UpdateClusterConfigResponse"
    "fixture/UpdateClusterConfigResponse.proto"
    eks
    (Proxy :: Proxy UpdateClusterConfig)

responseUpdateClusterVersion :: UpdateClusterVersionResponse -> TestTree
responseUpdateClusterVersion = res
    "UpdateClusterVersionResponse"
    "fixture/UpdateClusterVersionResponse.proto"
    eks
    (Proxy :: Proxy UpdateClusterVersion)

responseUpdateNodegroupVersion :: UpdateNodegroupVersionResponse -> TestTree
responseUpdateNodegroupVersion = res
    "UpdateNodegroupVersionResponse"
    "fixture/UpdateNodegroupVersionResponse.proto"
    eks
    (Proxy :: Proxy UpdateNodegroupVersion)

responseListUpdates :: ListUpdatesResponse -> TestTree
responseListUpdates = res
    "ListUpdatesResponse"
    "fixture/ListUpdatesResponse.proto"
    eks
    (Proxy :: Proxy ListUpdates)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource = res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    eks
    (Proxy :: Proxy TagResource)

responseListFargateProfiles :: ListFargateProfilesResponse -> TestTree
responseListFargateProfiles = res
    "ListFargateProfilesResponse"
    "fixture/ListFargateProfilesResponse.proto"
    eks
    (Proxy :: Proxy ListFargateProfiles)

responseListClusters :: ListClustersResponse -> TestTree
responseListClusters = res
    "ListClustersResponse"
    "fixture/ListClustersResponse.proto"
    eks
    (Proxy :: Proxy ListClusters)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource = res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    eks
    (Proxy :: Proxy UntagResource)

responseCreateNodegroup :: CreateNodegroupResponse -> TestTree
responseCreateNodegroup = res
    "CreateNodegroupResponse"
    "fixture/CreateNodegroupResponse.proto"
    eks
    (Proxy :: Proxy CreateNodegroup)

responseListNodegroups :: ListNodegroupsResponse -> TestTree
responseListNodegroups = res
    "ListNodegroupsResponse"
    "fixture/ListNodegroupsResponse.proto"
    eks
    (Proxy :: Proxy ListNodegroups)

responseDeleteNodegroup :: DeleteNodegroupResponse -> TestTree
responseDeleteNodegroup = res
    "DeleteNodegroupResponse"
    "fixture/DeleteNodegroupResponse.proto"
    eks
    (Proxy :: Proxy DeleteNodegroup)
