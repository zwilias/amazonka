{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AnnotationConsolidationConfig
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.AnnotationConsolidationConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configures how labels are consolidated across human workers.
--
--
--
-- /See:/ 'annotationConsolidationConfig' smart constructor.
newtype AnnotationConsolidationConfig = AnnotationConsolidationConfig'{_accAnnotationConsolidationLambdaARN
                                                                       :: Text}
                                          deriving (Eq, Read, Show, Data,
                                                    Typeable, Generic)

-- | Creates a value of 'AnnotationConsolidationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accAnnotationConsolidationLambdaARN' - The Amazon Resource Name (ARN) of a Lambda function implements the logic for annotation consolidation. For the built-in bounding box, image classification, semantic segmentation, and text classification task types, Amazon SageMaker Ground Truth provides the following Lambda functions:     * /Bounding box/ - Finds the most similar boxes from different workers based on the Jaccard index of the boxes. @arn:aws:lambda:us-east-1:432418664414:function:ACS-BoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-BoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-BoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-BoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-BoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-BoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-BoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-BoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-BoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-BoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-BoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-BoundingBox@      * /Image classification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of an image based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClass@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClass@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClass@      * /Multi-label image classification/ - Uses a variant of the Expectation Maximization approach to estimate the true classes of an image based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClassMultiLabel@      * /Semantic segmentation/ - Treats each pixel in an image as a multi-class classification and treats pixel annotations from workers as "votes" for the correct label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-SemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-SemanticSegmentation@      * /Text classification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of text based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClass@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClass@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClass@      * /Multi-label text classification/ - Uses a variant of the Expectation Maximization approach to estimate the true classes of text based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClassMultiLabel@      * /Named entity recognition/ - Groups similar selections and calculates aggregate boundaries, resolving to most-assigned label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-NamedEntityRecognition@      * /Bounding box verification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of verification judgement for bounding box labels based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationBoundingBox@      * /Semantic segmentation verification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of verification judgment for semantic segmentation labels based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationSemanticSegmentation@      * /Bounding box adjustment/ - Finds the most similar boxes from different workers based on the Jaccard index of the adjusted annotations. @arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentBoundingBox@      * /Semantic segmentation adjustment/ - Treats each pixel in an image as a multi-class classification and treats pixel adjusted annotations from workers as "votes" for the correct label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentSemanticSegmentation@  For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html Annotation Consolidation> .
annotationConsolidationConfig
    :: Text -- ^ 'accAnnotationConsolidationLambdaARN'
    -> AnnotationConsolidationConfig
annotationConsolidationConfig
  pAnnotationConsolidationLambdaARN_
  = AnnotationConsolidationConfig'{_accAnnotationConsolidationLambdaARN
                                     = pAnnotationConsolidationLambdaARN_}

-- | The Amazon Resource Name (ARN) of a Lambda function implements the logic for annotation consolidation. For the built-in bounding box, image classification, semantic segmentation, and text classification task types, Amazon SageMaker Ground Truth provides the following Lambda functions:     * /Bounding box/ - Finds the most similar boxes from different workers based on the Jaccard index of the boxes. @arn:aws:lambda:us-east-1:432418664414:function:ACS-BoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-BoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-BoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-BoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-BoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-BoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-BoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-BoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-BoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-BoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-BoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-BoundingBox@      * /Image classification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of an image based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClass@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClass@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClass@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClass@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClass@      * /Multi-label image classification/ - Uses a variant of the Expectation Maximization approach to estimate the true classes of an image based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClassMultiLabel@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClassMultiLabel@      * /Semantic segmentation/ - Treats each pixel in an image as a multi-class classification and treats pixel annotations from workers as "votes" for the correct label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-SemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-SemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-SemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-SemanticSegmentation@      * /Text classification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of text based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClass@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClass@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClass@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClass@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClass@      * /Multi-label text classification/ - Uses a variant of the Expectation Maximization approach to estimate the true classes of text based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClassMultiLabel@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClassMultiLabel@      * /Named entity recognition/ - Groups similar selections and calculates aggregate boundaries, resolving to most-assigned label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-NamedEntityRecognition@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-NamedEntityRecognition@      * /Bounding box verification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of verification judgement for bounding box labels based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationBoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationBoundingBox@      * /Semantic segmentation verification/ - Uses a variant of the Expectation Maximization approach to estimate the true class of verification judgment for semantic segmentation labels based on annotations from individual workers. @arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationSemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationSemanticSegmentation@      * /Bounding box adjustment/ - Finds the most similar boxes from different workers based on the Jaccard index of the adjusted annotations. @arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentBoundingBox@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentBoundingBox@      * /Semantic segmentation adjustment/ - Treats each pixel in an image as a multi-class classification and treats pixel adjusted annotations from workers as "votes" for the correct label. @arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentSemanticSegmentation@  @arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentSemanticSegmentation@  For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html Annotation Consolidation> .
accAnnotationConsolidationLambdaARN :: Lens' AnnotationConsolidationConfig Text
accAnnotationConsolidationLambdaARN = lens _accAnnotationConsolidationLambdaARN (\ s a -> s{_accAnnotationConsolidationLambdaARN = a})

instance FromJSON AnnotationConsolidationConfig where
        parseJSON
          = withObject "AnnotationConsolidationConfig"
              (\ x ->
                 AnnotationConsolidationConfig' <$>
                   (x .: "AnnotationConsolidationLambdaArn"))

instance Hashable AnnotationConsolidationConfig where

instance NFData AnnotationConsolidationConfig where

instance ToJSON AnnotationConsolidationConfig where
        toJSON AnnotationConsolidationConfig'{..}
          = object
              (catMaybes
                 [Just
                    ("AnnotationConsolidationLambdaArn" .=
                       _accAnnotationConsolidationLambdaARN)])