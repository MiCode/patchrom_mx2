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
    .line 2435
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2439
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2443
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2444
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 5
    .parameter "close"

    .prologue
    .line 2447
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2448
    .local v1, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 2450
    if-eqz p1, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;

    .line 2452
    .local v0, adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2455
    .end local v0           #adapter:Lcom/meizu/widget/RecipientEdit$RecipientAdapter;
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2456
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2458
    :cond_1
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 2462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 2463
    return-void
.end method

.method public setOnPopupListener(Landroid/view/View;Lcom/meizu/widget/RecipientEdit$OnDropDownListener;)V
    .locals 0
    .parameter "root"
    .parameter "l"

    .prologue
    .line 2479
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    .line 2480
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    .line 2481
    return-void
.end method

.method public showDropDown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2467
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2468
    .local v1, isShow:Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 2469
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2470
    .local v0, dropdownList:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 2473
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 2474
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/widget/RecipientEdit$OnDropDownListener;

    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/meizu/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2476
    :cond_0
    return-void
.end method
