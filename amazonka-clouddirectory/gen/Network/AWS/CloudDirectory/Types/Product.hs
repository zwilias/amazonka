{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE PatternSynonyms    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudDirectory.Types.Product (
    module Network.AWS.CloudDirectory.Types.AttributeKey,
    module Network.AWS.CloudDirectory.Types.AttributeKeyAndValue,
    module Network.AWS.CloudDirectory.Types.AttributeNameAndValue,
    module Network.AWS.CloudDirectory.Types.BatchAddFacetToObject,
    module Network.AWS.CloudDirectory.Types.BatchAddFacetToObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchAttachObject,
    module Network.AWS.CloudDirectory.Types.BatchAttachObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchAttachPolicy,
    module Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse,
    module Network.AWS.CloudDirectory.Types.BatchAttachToIndex,
    module Network.AWS.CloudDirectory.Types.BatchAttachToIndexResponse,
    module Network.AWS.CloudDirectory.Types.BatchAttachTypedLink,
    module Network.AWS.CloudDirectory.Types.BatchAttachTypedLinkResponse,
    module Network.AWS.CloudDirectory.Types.BatchCreateIndex,
    module Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse,
    module Network.AWS.CloudDirectory.Types.BatchCreateObject,
    module Network.AWS.CloudDirectory.Types.BatchCreateObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchDeleteObject,
    module Network.AWS.CloudDirectory.Types.BatchDeleteObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchDetachFromIndex,
    module Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse,
    module Network.AWS.CloudDirectory.Types.BatchDetachObject,
    module Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchDetachPolicy,
    module Network.AWS.CloudDirectory.Types.BatchDetachPolicyResponse,
    module Network.AWS.CloudDirectory.Types.BatchDetachTypedLink,
    module Network.AWS.CloudDirectory.Types.BatchDetachTypedLinkResponse,
    module Network.AWS.CloudDirectory.Types.BatchGetLinkAttributes,
    module Network.AWS.CloudDirectory.Types.BatchGetLinkAttributesResponse,
    module Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes,
    module Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse,
    module Network.AWS.CloudDirectory.Types.BatchGetObjectInformation,
    module Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse,
    module Network.AWS.CloudDirectory.Types.BatchListAttachedIndices,
    module Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse,
    module Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks,
    module Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse,
    module Network.AWS.CloudDirectory.Types.BatchListIndex,
    module Network.AWS.CloudDirectory.Types.BatchListIndexResponse,
    module Network.AWS.CloudDirectory.Types.BatchListObjectAttributes,
    module Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse,
    module Network.AWS.CloudDirectory.Types.BatchListObjectChildren,
    module Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse,
    module Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths,
    module Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse,
    module Network.AWS.CloudDirectory.Types.BatchListObjectParents,
    module Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse,
    module Network.AWS.CloudDirectory.Types.BatchListObjectPolicies,
    module Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse,
    module Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks,
    module Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse,
    module Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments,
    module Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse,
    module Network.AWS.CloudDirectory.Types.BatchLookupPolicy,
    module Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse,
    module Network.AWS.CloudDirectory.Types.BatchReadException,
    module Network.AWS.CloudDirectory.Types.BatchReadOperation,
    module Network.AWS.CloudDirectory.Types.BatchReadOperationResponse,
    module Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse,
    module Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObject,
    module Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse,
    module Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributes,
    module Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributesResponse,
    module Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributes,
    module Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributesResponse,
    module Network.AWS.CloudDirectory.Types.BatchWriteOperation,
    module Network.AWS.CloudDirectory.Types.BatchWriteOperationResponse,
    module Network.AWS.CloudDirectory.Types.Directory,
    module Network.AWS.CloudDirectory.Types.Facet,
    module Network.AWS.CloudDirectory.Types.FacetAttribute,
    module Network.AWS.CloudDirectory.Types.FacetAttributeDefinition,
    module Network.AWS.CloudDirectory.Types.FacetAttributeReference,
    module Network.AWS.CloudDirectory.Types.FacetAttributeUpdate,
    module Network.AWS.CloudDirectory.Types.IndexAttachment,
    module Network.AWS.CloudDirectory.Types.LinkAttributeAction,
    module Network.AWS.CloudDirectory.Types.LinkAttributeUpdate,
    module Network.AWS.CloudDirectory.Types.ObjectAttributeAction,
    module Network.AWS.CloudDirectory.Types.ObjectAttributeRange,
    module Network.AWS.CloudDirectory.Types.ObjectAttributeUpdate,
    module Network.AWS.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple,
    module Network.AWS.CloudDirectory.Types.ObjectReference,
    module Network.AWS.CloudDirectory.Types.PathToObjectIdentifiers,
    module Network.AWS.CloudDirectory.Types.PolicyAttachment,
    module Network.AWS.CloudDirectory.Types.PolicyToPath,
    module Network.AWS.CloudDirectory.Types.Rule,
    module Network.AWS.CloudDirectory.Types.SchemaFacet,
    module Network.AWS.CloudDirectory.Types.Tag,
    module Network.AWS.CloudDirectory.Types.TypedAttributeValue,
    module Network.AWS.CloudDirectory.Types.TypedAttributeValueRange,
    module Network.AWS.CloudDirectory.Types.TypedLinkAttributeDefinition,
    module Network.AWS.CloudDirectory.Types.TypedLinkAttributeRange,
    module Network.AWS.CloudDirectory.Types.TypedLinkFacet,
    module Network.AWS.CloudDirectory.Types.TypedLinkFacetAttributeUpdate,
    module Network.AWS.CloudDirectory.Types.TypedLinkSchemaAndFacetName,
    module Network.AWS.CloudDirectory.Types.TypedLinkSpecifier
  ) where

import Network.AWS.CloudDirectory.Types.AttributeKey
import Network.AWS.CloudDirectory.Types.AttributeKeyAndValue
import Network.AWS.CloudDirectory.Types.AttributeNameAndValue
import Network.AWS.CloudDirectory.Types.BatchAddFacetToObject
import Network.AWS.CloudDirectory.Types.BatchAddFacetToObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachObject
import Network.AWS.CloudDirectory.Types.BatchAttachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchAttachPolicy
import Network.AWS.CloudDirectory.Types.BatchAttachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchAttachToIndex
import Network.AWS.CloudDirectory.Types.BatchAttachToIndexResponse
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLink
import Network.AWS.CloudDirectory.Types.BatchAttachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchCreateIndex
import Network.AWS.CloudDirectory.Types.BatchCreateIndexResponse
import Network.AWS.CloudDirectory.Types.BatchCreateObject
import Network.AWS.CloudDirectory.Types.BatchCreateObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDeleteObject
import Network.AWS.CloudDirectory.Types.BatchDeleteObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndex
import Network.AWS.CloudDirectory.Types.BatchDetachFromIndexResponse
import Network.AWS.CloudDirectory.Types.BatchDetachObject
import Network.AWS.CloudDirectory.Types.BatchDetachObjectResponse
import Network.AWS.CloudDirectory.Types.BatchDetachPolicy
import Network.AWS.CloudDirectory.Types.BatchDetachPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLink
import Network.AWS.CloudDirectory.Types.BatchDetachTypedLinkResponse
import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformation
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformationResponse
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndices
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndicesResponse
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListIndex
import Network.AWS.CloudDirectory.Types.BatchListIndexResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectChildren
import Network.AWS.CloudDirectory.Types.BatchListObjectChildrenResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPathsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectParents
import Network.AWS.CloudDirectory.Types.BatchListObjectParentsResponse
import Network.AWS.CloudDirectory.Types.BatchListObjectPolicies
import Network.AWS.CloudDirectory.Types.BatchListObjectPoliciesResponse
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
import Network.AWS.CloudDirectory.Types.BatchLookupPolicy
import Network.AWS.CloudDirectory.Types.BatchLookupPolicyResponse
import Network.AWS.CloudDirectory.Types.BatchReadException
import Network.AWS.CloudDirectory.Types.BatchReadOperation
import Network.AWS.CloudDirectory.Types.BatchReadOperationResponse
import Network.AWS.CloudDirectory.Types.BatchReadSuccessfulResponse
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObject
import Network.AWS.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchUpdateLinkAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchUpdateObjectAttributesResponse
import Network.AWS.CloudDirectory.Types.BatchWriteOperation
import Network.AWS.CloudDirectory.Types.BatchWriteOperationResponse
import Network.AWS.CloudDirectory.Types.Directory
import Network.AWS.CloudDirectory.Types.Facet
import Network.AWS.CloudDirectory.Types.FacetAttribute
import Network.AWS.CloudDirectory.Types.FacetAttributeDefinition
import Network.AWS.CloudDirectory.Types.FacetAttributeReference
import Network.AWS.CloudDirectory.Types.FacetAttributeUpdate
import Network.AWS.CloudDirectory.Types.IndexAttachment
import Network.AWS.CloudDirectory.Types.LinkAttributeAction
import Network.AWS.CloudDirectory.Types.LinkAttributeUpdate
import Network.AWS.CloudDirectory.Types.ObjectAttributeAction
import Network.AWS.CloudDirectory.Types.ObjectAttributeRange
import Network.AWS.CloudDirectory.Types.ObjectAttributeUpdate
import Network.AWS.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple
import Network.AWS.CloudDirectory.Types.ObjectReference
import Network.AWS.CloudDirectory.Types.PathToObjectIdentifiers
import Network.AWS.CloudDirectory.Types.PolicyAttachment
import Network.AWS.CloudDirectory.Types.PolicyToPath
import Network.AWS.CloudDirectory.Types.Rule
import Network.AWS.CloudDirectory.Types.SchemaFacet
import Network.AWS.CloudDirectory.Types.Tag
import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import Network.AWS.CloudDirectory.Types.TypedAttributeValueRange
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeDefinition
import Network.AWS.CloudDirectory.Types.TypedLinkAttributeRange
import Network.AWS.CloudDirectory.Types.TypedLinkFacet
import Network.AWS.CloudDirectory.Types.TypedLinkFacetAttributeUpdate
import Network.AWS.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Network.AWS.CloudDirectory.Types.TypedLinkSpecifier
import Network.AWS.Lens
import Network.AWS.Prelude
