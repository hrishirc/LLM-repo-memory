---
description: Centralized workflow router for development tasks (features and tweaks)
globs:
alwaysApply: false
---

# Workflow Router

## Overview
This document serves as the central entry point for initiating development workflows. It analyzes the user's request to determine whether a "tweak" (post-first iteration change) or a "new feature" development is required, and then directs to the appropriate workflow.

## Workflow Determination Logic

1.  **Analyze User Prompt and Context**:
    *   Carefully examine the user's prompt and any provided context to understand the nature of the development request.

2.  **Identify Request Type (Tweak vs. New Feature)**:
    *   **If the prompt explicitly refers to a tweak, bug fix, enhancement, or implies a modification to an existing feature based on list of existing features in the the knowledge base and if the latter feature global context does not indicate its completion**:
        *   **Action**: Proceed as a "Tweak Request".
    *   **If the prompt explicitly refers to creating something new, a new capability, or implies a completely new functionality or if modification to existing feature, but feature global context of latter feature indicates completion**:
        *   **Action**: Proceed as a "New Feature Request".
    *   **If ambiguous**:
        *   **Action**: Ask  for clarification from the user: "Is this request for a tweak/enhancement to an existing feature, or for a completely new feature?"

3.  **Handle Tweak Requests**:
    *   **Identify Feature Name**: Attempt to extract the `feature_name` from the prompt (e.g., "tweak for feature-X", "bug in feature-Y").
        *   **If `feature_name` is clear**: Proceed with the identified `feature_name`.
        *   **If `feature_name` is ambiguous or not provided**:
            *   **Action**: Ask for clarification from the user: "Please specify the name of the feature this tweak/enhancement applies to (e.g., 'feature-authentication', 'feature-user-profile')."
    *   **Ensure Directory Structure and Requirement Files**:
        *   **Action**: Verify and create the necessary directory structure: `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/`.
        *   **Action**: If `knowledge-base/feature-docs/feature-{feature_name}/tweaks/{tweak_name}/requirement.md` does not exist, create it and populate its content with the original user prompt.
    *   **Check if linked to existing feature**:
        *   **If the identified `feature_name` is linked to an existing feature**:
            *   **Action**: Initiate the `tweak-development-workflow.md` by reading its content and executing its phases and steps sequentially.
        *   **If the identified `feature_name` is NOT linked to an existing feature**:
            *   **Action**: Ask for user confirmation: "The specified feature '{feature_name}' does not appear to exist. Would you like to create a new feature with this name and initiate the feature development workflow?"
                *   **If user confirms 'yes'**: Initiate the `feature-development-workflow.md` for the new feature by reading its content and executing its phases and steps sequentially
                *   **If user confirms 'no'**: **STOP WORKFLOW** and ask for correct feature name or clarification.

4.  **Handle New Feature Requests**:
    *   **Identify Feature Name**: Attempt to extract the `feature_name` from the prompt (e.g., "create new feature 'user-onboarding'", "develop 'payment-gateway' functionality").
        *   **If `feature_name` is clearly identifiable**: Proceed with the identified `feature_name`. No confirmation required.
        *   **If `feature_name` is ambiguous or not provided**:
            *   **Action**: Ask for clarification from the user: "Please provide a clear name for the new feature (e.g., 'feature-new-dashboard', 'feature-email-notifications')."
    *   **Ensure Directory Structure and Requirement Files**:
        *   **Action**: Verify and create the necessary directory structure: `knowledge-base/feature-docs/feature-{feature_name}/company-ask/product/`.
        *   **Action**: If `knowledge-base/feature-docs/feature-{feature_name}/company-ask/product/requirement-document.md` does not exist, create it and populate its content with the original user prompt.
    *   **Action**: Initiate the `feature-development-workflow.md` for the new feature by reading its content and executing its phases and steps sequentially.

## Global Reference Adherence Rule
**CRITICAL**: Whenever a workflow document refers to another internal document or section (e.g., 'Refer to [file#section]'), the LLM must read the content of the referenced section and strictly integrate its instructions into the current workflow's execution sequence. This ensures all relevant guidelines and steps are followed without exception.

## Invoking Workflows
Once the determination is made, the appropriate workflow (`tweak-development-workflow.md` or `feature-development-workflow.md`) is conceptually "invoked" to continue the development process. This document serves as the initial routing layer.
