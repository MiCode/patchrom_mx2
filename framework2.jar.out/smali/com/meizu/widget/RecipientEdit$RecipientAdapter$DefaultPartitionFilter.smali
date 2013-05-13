.class final Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2541
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/widget/RecipientEdit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2541
    invoke-direct {p0, p1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resultValue"

    .prologue
    .line 2572
    const/4 v0, 0x0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .parameter "constraint"

    .prologue
    const/4 v7, 0x0

    .line 2545
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #getter for: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$2600(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 2546
    if-nez p1, :cond_1

    const-string v1, ""

    .line 2547
    .local v1, filter:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 2548
    .local v3, results:Landroid/widget/Filter$FilterResults;
    const/4 v2, 0x0

    .line 2549
    .local v2, groupCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2550
    .local v0, contactCursor:Landroid/database/Cursor;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2552
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v4, v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$2700(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2554
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const-wide/16 v5, -0x1

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    invoke-static {v4, v1, v7, v5, v6}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$2800(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    .line 2557
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v2, v4, v7

    const/4 v5, 0x1

    aput-object v0, v4, v5

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 2558
    return-object v3

    .line 2546
    .end local v0           #contactCursor:Landroid/database/Cursor;
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #groupCursor:Landroid/database/Cursor;
    .end local v3           #results:Landroid/widget/Filter$FilterResults;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 2563
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2564
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 2565
    .local v0, cursors:[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    #calls: Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, p1, v2, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->access$2900(Lcom/meizu/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 2567
    .end local v0           #cursors:[Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 2568
    return-void
.end method
