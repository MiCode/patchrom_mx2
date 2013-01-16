.class public Landroid/provider/ContactsContract$SearchSnippetColumns;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchSnippetColumns"
.end annotation


# static fields
.field public static final DEFERRED_SNIPPETING_KEY:Ljava/lang/String; = "deferred_snippeting"

.field public static final SEARCH_WEIGHT:Ljava/lang/String; = "search_weight"

.field public static final SEARCH_WEIGHT_CONTENT:I = 0x2712

.field public static final SEARCH_WEIGHT_NAME:I = 0x2710

.field public static final SEARCH_WEIGHT_TOKENS:I = 0x2711

.field public static final SEARCH_WEIGHT_UNKNOW:I = 0x2713

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SNIPPET_ARGS_PARAM_KEY:Ljava/lang/String; = "snippet_args"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5099
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
