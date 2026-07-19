# Performance

## Typia / Nestia

Using typia or nestia to do type check with complex type will increase compile time and build size.

This includes all function under `typia`, return type of `Controller` in `api`.

### Example:

<https://github.com/BozhanL/rehua/blob/11ff9d3cfa72d9eb9231478c1eef77edd41c955a/web/app/components/form/ObjectFieldTemplate.tsx>

```typescript
interface ObjectFieldTemplateContext {
    schema: RJSFSchema;
    uiSchema: UiSchema;
    setSchema: Dispatch<SetStateAction<RJSFSchema>>;
    setUiSchema: Dispatch<SetStateAction<UiSchema>>;
}

export default function ObjectFieldTemplate(
    props: ObjectFieldTemplateProps,
): JSX.Element {
    const context: unknown = props.registry.formContext;
    typia.assertGuard<{ objectFieldTemplate: ObjectFieldTemplateContext }>(
        context,
    );
}
```

The above code will cause compile time to increase 50 seconds.

### Workaround:

1. Trim the type and remove unused value:

    ```typescript
    export interface ObjectFieldTemplateContext {
        templates: string[];
        setSchema: Dispatch<SetStateAction<RJSFSchema>>;
        setUiSchema: Dispatch<SetStateAction<UiSchema>>;
    }
    ```

2. Use a simpler type. For example, use `Record<string, unknown>` instead of `RJSFSchema` or `UiSchema`.
