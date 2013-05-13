.class Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientAutoCompleteTextView"
.end annotation


# instance fields
.field private mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2450
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2454
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2455
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2458
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2459
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 5
    .parameter "close"

    .prologue
    .line 2462
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2463
    .local v1, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 2465
    if-eqz p1, :cond_0

    .line 2466
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    .line 2467
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2470
    .end local v0           #adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2471
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2473
    :cond_1
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 2477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 2478
    return-void
.end method

.method public setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 0
    .parameter "root"
    .parameter "l"

    .prologue
    .line 2508
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    .line 2509
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    .line 2510
    return-void
.end method

.method public showDropDown()V
    .locals 10

    .prologue
    .line 2482
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2483
    .local v1, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 2484
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2485
    .local v0, dropdownList:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050090

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2490
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108050e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2493
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2494
    .local v4, padding:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2495
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v5

    .line 2496
    .local v5, popup:Landroid/widget/PopupWindow;
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v6, v7

    .line 2497
    .local v2, listHeight:I
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2498
    .local v3, listItemHeight:I
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    mul-int/2addr v6, v3

    if-ge v2, v6, :cond_0

    .line 2499
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/PopupWindow;->update(II)V

    .line 2502
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 2503
    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2505
    :cond_1
    return-void
.end method
