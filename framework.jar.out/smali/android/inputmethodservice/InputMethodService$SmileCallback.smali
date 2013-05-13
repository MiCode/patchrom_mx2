.class Landroid/inputmethodservice/InputMethodService$SmileCallback;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Lcom/meizu/widget/SmileView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileCallback"
.end annotation


# instance fields
.field private mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

.field private mType:I

.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter

    .prologue
    .line 2488
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mType:I

    .line 2490
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    array-length v0, v0

    return v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "index"

    .prologue
    .line 2560
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 2561
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    aget-object v0, v1, p1

    .line 2562
    .local v0, item:Landroid/inputmethodservice/InputMethodService$Smile;
    iget-object v1, v0, Landroid/inputmethodservice/InputMethodService$Smile;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 2563
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/inputmethodservice/InputMethodService$Smile;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService$Smile;->icon:Landroid/graphics/drawable/Drawable;

    .line 2565
    :cond_0
    iget-object v1, v0, Landroid/inputmethodservice/InputMethodService$Smile;->icon:Landroid/graphics/drawable/Drawable;

    .line 2567
    .end local v0           #item:Landroid/inputmethodservice/InputMethodService$Smile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAspectFixed()Z
    .locals 1

    .prologue
    .line 2582
    const/4 v0, 0x1

    return v0
.end method

.method public onCommit(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2572
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2573
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2574
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2575
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService$Smile;->label:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2578
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method setSmileType(I)V
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2493
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mType:I

    if-ne p1, v0, :cond_0

    .line 2551
    :goto_0
    return-void

    .line 2495
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mType:I

    .line 2496
    if-nez p1, :cond_1

    .line 2497
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/inputmethodservice/InputMethodService$Smile;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, ":-)"

    const v3, 0x1080697

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, ":-D"

    const v3, 0x1080691

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, ";-)"

    const v3, 0x108069d

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, ":-("

    const v3, 0x1080695

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, ";-P"

    const v3, 0x108069b

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-/"

    const v4, 0x108069c

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-O"

    const v4, 0x108069a

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-$"

    const v4, 0x1080693

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-X"

    const v4, 0x1080699

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-|"

    const v4, 0x1080682

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string/jumbo v3, "o(\u256f\u25a1\u2570)o"

    const v4, 0x108068f

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "T_T"

    const v4, 0x1080686

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string/jumbo v3, "\u2570_\u256f"

    const v4, 0x1080681

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "-_-zZ"

    const v4, 0x1080696

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "^(oo)^"

    const v4, 0x1080694

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "*^_^*"

    const v4, 0x1080692

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string/jumbo v3, "o_o"

    const v4, 0x1080684

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "@_@"

    const v4, 0x108068a

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "-_-!"

    const v4, 0x108068b

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, ":-*"

    const v4, 0x1080690

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "(\u256f_\u2570)"

    const v4, 0x1080698

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string/jumbo v3, "\u2192_\u2192"

    const v4, 0x1080689

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "-_-|||"

    const v4, 0x108068d

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "B-)"

    const v4, 0x1080685

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    goto/16 :goto_0

    .line 2522
    :cond_1
    if-ne p1, v5, :cond_2

    .line 2523
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/inputmethodservice/InputMethodService$Smile;

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, "[\u5475\u5475]"

    const v3, 0x1080697

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, "[\u563b\u563b]"

    const v3, 0x1080691

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, "[\u592a\u5f00\u5fc3]"

    const v3, 0x108069d

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, "[\u60b2\u4f24]"

    const v3, 0x1080695

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v2, "[\u6324\u773c]"

    const v3, 0x108069b

    invoke-direct {v1, v2, v3}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u54fc]"

    const v4, 0x108069c

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u61d2\u5f97\u7406\u4f60]"

    const v4, 0x108069a

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u94b1]"

    const v4, 0x1080693

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u95ed\u5634]"

    const v4, 0x1080699

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u601d\u8003]"

    const v4, 0x1080682

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u56e7]"

    const v4, 0x108068f

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u6cea]"

    const v4, 0x1080686

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u6012]"

    const v4, 0x1080681

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u7761\u89c9]"

    const v4, 0x1080696

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u732a\u5934]"

    const v4, 0x1080694

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u53ef\u7231]"

    const v4, 0x1080692

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u5bb3\u7f9e]"

    const v4, 0x1080684

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u6655]"

    const v4, 0x108068a

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u6c57]"

    const v4, 0x108068b

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u4eb2\u4eb2]"

    const v4, 0x1080690

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u5931\u671b]"

    const v4, 0x1080698

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u7591\u95ee]"

    const v4, 0x1080689

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u751f\u75c5]"

    const v4, 0x108068d

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/inputmethodservice/InputMethodService$Smile;

    const-string v3, "[\u9177]"

    const v4, 0x1080685

    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService$Smile;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    goto/16 :goto_0

    .line 2549
    :cond_2
    new-array v0, v4, [Landroid/inputmethodservice/InputMethodService$Smile;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileCallback;->mSmiles:[Landroid/inputmethodservice/InputMethodService$Smile;

    goto/16 :goto_0
.end method
