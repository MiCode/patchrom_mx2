.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckedItem:I

.field private final mColorChecked:I

.field private final mColorNormal:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "checkedItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2547
    .local p3, itemsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2548
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 2549
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 2550
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 2551
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2552
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mColorNormal:I

    .line 2553
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mColorChecked:I

    .line 2554
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 2558
    if-eqz p2, :cond_1

    move-object v7, p2

    :goto_0
    check-cast v7, Lcom/meizu/widget/CheckedTwoLineListItem;

    .line 2560
    .local v7, view:Lcom/meizu/widget/CheckedTwoLineListItem;
    if-ltz p1, :cond_0

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt p1, v9, :cond_2

    .line 2579
    :cond_0
    :goto_1
    return-object v7

    .line 2558
    .end local v7           #view:Lcom/meizu/widget/CheckedTwoLineListItem;
    :cond_1
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 2561
    .restart local v7       #view:Lcom/meizu/widget/CheckedTwoLineListItem;
    :cond_2
    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v9, :cond_3

    const/4 v1, 0x1

    .line 2562
    .local v1, checked:Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 2563
    .local v4, item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v3, v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 2564
    .local v3, imeName:Ljava/lang/CharSequence;
    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 2565
    .local v6, subtypeName:Ljava/lang/CharSequence;
    const v9, 0x1020014

    invoke-virtual {v7, v9}, Lcom/meizu/widget/CheckedTwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2566
    .local v2, firstTextView:Landroid/widget/TextView;
    const v9, 0x1020015

    invoke-virtual {v7, v9}, Lcom/meizu/widget/CheckedTwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2567
    .local v5, secondTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_4

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mColorChecked:I

    :goto_3
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2568
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2569
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2576
    :goto_4
    const v8, 0x1020001

    invoke-virtual {v7, v8}, Lcom/meizu/widget/CheckedTwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2578
    .local v0, checkButton:Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .end local v0           #checkButton:Landroid/widget/CheckBox;
    .end local v1           #checked:Z
    .end local v2           #firstTextView:Landroid/widget/TextView;
    .end local v3           #imeName:Ljava/lang/CharSequence;
    .end local v4           #item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .end local v5           #secondTextView:Landroid/widget/TextView;
    .end local v6           #subtypeName:Ljava/lang/CharSequence;
    :cond_3
    move v1, v8

    .line 2561
    goto :goto_2

    .line 2567
    .restart local v1       #checked:Z
    .restart local v2       #firstTextView:Landroid/widget/TextView;
    .restart local v3       #imeName:Ljava/lang/CharSequence;
    .restart local v4       #item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    .restart local v5       #secondTextView:Landroid/widget/TextView;
    .restart local v6       #subtypeName:Ljava/lang/CharSequence;
    :cond_4
    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mColorNormal:I

    goto :goto_3

    .line 2572
    :cond_5
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2573
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2574
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
