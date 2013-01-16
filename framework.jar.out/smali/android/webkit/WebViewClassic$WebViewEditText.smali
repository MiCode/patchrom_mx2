.class Landroid/webkit/WebViewClassic$WebViewEditText;
.super Landroid/widget/EditText;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewEditText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;
    }
.end annotation


# instance fields
.field private final NO_FILTERS:[Landroid/text/InputFilter;

.field private mBg:Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;

.field private mCharacter:[C

.field private mContext:Landroid/content/Context;

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mEditConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInitWebViewScrollX:I

.field private mInitWebViewScrollY:I

.field private mInsideRemove:Z

.field private mMagnifierVisible:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mRingInset:I

.field mRtl:Z

.field private mScrolled:Z

.field mSingle:Z

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mWidthSpec:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "webView"
    .parameter "inputConnection"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 622
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    .line 623
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 611
    new-array v3, v5, [C

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mCharacter:[C

    .line 619
    new-array v3, v7, [Landroid/text/InputFilter;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 1296
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMagnifierVisible:Z

    .line 624
    iput-object p2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    .line 625
    iput-object p3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 626
    iput-object p4, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mEditConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 627
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mEditConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getMaxLength()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    .line 628
    const/high16 v3, 0x3fc0

    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 629
    .local v2, ringWidth:F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    .line 633
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 634
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 636
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 641
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewEditText;->setTextColor(I)V

    .line 642
    new-instance v3, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;-><init>(Landroid/webkit/WebViewClassic$WebViewEditText;I)V

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mBg:Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;

    .line 643
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mBg:Landroid/webkit/WebViewClassic$WebViewEditText$BackgroundDrawable;

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebViewClassic$WebViewEditText;->setPadding(IIII)V

    .line 646
    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic$WebViewEditText;->setEnableDragSelection(Z)V

    .line 649
    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic$WebViewEditText;->setIncludeFontPadding(Z)V

    .line 650
    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewClassic$WebViewEditText;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 567
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WebViewEditText;->setMaxLength(I)V

    return-void
.end method

.method private lineUpScroll()V
    .locals 4

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    #calls: Landroid/webkit/WebViewClassic;->scrollEditText(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;II)V

    .line 1274
    return-void
.end method

.method private offsetEventX()I
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private offsetEventY()I
    .locals 2

    .prologue
    .line 854
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 1314
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 1019
    const-string v0, "WebEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iput p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    .line 1021
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 1022
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1027
    :goto_0
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 693
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v9

    .line 847
    :goto_0
    return v9

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v0, 0x1

    .line 697
    .local v0, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 699
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 700
    .local v1, isArrowKey:Z
    packed-switch v2, :pswitch_data_0

    .line 709
    :goto_2
    const/16 v9, 0x3d

    if-ne v9, v2, :cond_3

    .line 710
    if-eqz v0, :cond_1

    .line 711
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic$WebViewEditText;->onEditorAction(I)V

    .line 713
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 696
    .end local v0           #down:Z
    .end local v1           #isArrowKey:Z
    .end local v2           #keyCode:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 705
    .restart local v0       #down:Z
    .restart local v1       #isArrowKey:Z
    .restart local v2       #keyCode:I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_2

    .line 715
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 716
    .local v8, text:Landroid/text/Spannable;
    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 717
    .local v6, oldStart:I
    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 722
    .local v4, oldEnd:I
    const/16 v9, 0x43

    if-ne v9, v2, :cond_5

    .line 723
    if-nez v6, :cond_4

    if-nez v4, :cond_4

    .line 724
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 725
    const/4 v9, 0x1

    goto :goto_0

    .line 727
    :cond_4
    if-eqz v0, :cond_5

    .line 728
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotDelete:Z

    .line 729
    iput v6, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDelSelStart:I

    .line 730
    iput v4, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDelSelEnd:I

    .line 734
    :cond_5
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mSingle:Z

    if-eqz v9, :cond_8

    const/16 v9, 0x42

    if-eq v9, v2, :cond_6

    const/16 v9, 0xa0

    if-ne v9, v2, :cond_8

    .line 740
    :cond_6
    if-nez v0, :cond_7

    .line 744
    iget-object v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 746
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 747
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 749
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_0

    .line 750
    :cond_8
    const/16 v9, 0x17

    if-ne v9, v2, :cond_a

    .line 757
    if-nez v0, :cond_9

    .line 758
    iget-object v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->centerKeyPressOnTextField()V

    .line 761
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_0

    .line 765
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getLayout()Landroid/text/Layout;

    move-result-object v9

    if-nez v9, :cond_b

    .line 766
    iget v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWidthSpec:I

    iget v10, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHeightSpec:I

    invoke-virtual {p0, v9, v10}, Landroid/webkit/WebViewClassic$WebViewEditText;->measure(II)V

    .line 769
    :cond_b
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 770
    .local v5, oldLength:I
    iget v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    iget v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    if-ne v5, v9, :cond_e

    const/4 v3, 0x1

    .line 775
    .local v3, maxedOut:Z
    :goto_3
    if-eqz v3, :cond_f

    if-eq v4, v6, :cond_f

    .line 776
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 780
    .local v7, oldText:Ljava/lang/String;
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 791
    const/16 v9, 0x42

    if-eq v9, v2, :cond_c

    const/16 v9, 0xa0

    if-ne v9, v2, :cond_d

    .line 796
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotEnterDown:Z

    .line 798
    :cond_d
    if-eqz v3, :cond_11

    if-nez v1, :cond_11

    const/16 v9, 0x43

    if-eq v2, v9, :cond_11

    .line 799
    if-ne v4, v6, :cond_10

    .line 801
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 770
    .end local v3           #maxedOut:Z
    .end local v7           #oldText:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    .line 778
    .restart local v3       #maxedOut:Z
    :cond_f
    const-string v7, ""

    .restart local v7       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 802
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 816
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 831
    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 835
    :cond_12
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotEnterDown:Z

    if-eqz v9, :cond_13

    if-nez v0, :cond_13

    .line 836
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 839
    :cond_13
    if-eqz v1, :cond_15

    .line 844
    if-eqz v0, :cond_14

    iget-object v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v2, p1}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_14
    iget-object v9, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9, v2, p1}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 847
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureLayout()V
    .locals 6

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1113
    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebViewClassic$WebViewEditText;->measure(II)V

    .line 1114
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1115
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1116
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic$WebViewEditText;->layout(IIII)V

    .line 1120
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected getDefaultMagnifierVisible()Z
    .locals 1

    .prologue
    .line 1290
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMagnifierVisible:Z

    if-nez v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    .line 1293
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getDefaultMagnifierVisible()Z

    move-result v0

    goto :goto_0
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 1303
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mEditConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1079
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mEditConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method public onEditorAction(I)V
    .locals 5
    .parameter "actionCode"

    .prologue
    const/16 v4, 0x42

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1124
    packed-switch p1, :pswitch_data_0

    .line 1145
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 1148
    :goto_1
    :pswitch_1
    return-void

    .line 1130
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_1

    .line 1133
    :pswitch_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    goto :goto_1

    .line 1138
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1140
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 1142
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1153
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mFromFocusChange:Z

    .line 1154
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1155
    if-eqz p1, :cond_1

    .line 1156
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 1160
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mFromFocusChange:Z

    .line 1161
    return-void

    .line 1157
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInsideRemove:Z

    if-nez v0, :cond_0

    .line 1158
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 1265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 1266
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->lineUpScroll()V

    .line 1267
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 1253
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 1255
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInSetTextAndKeepSelection:Z

    if-eqz v0, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mFromWebKit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mFromFocusChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mFromSetInputType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->setSelection(II)V

    .line 1259
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->lineUpScroll()V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 23
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1165
    invoke-super/range {p0 .. p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1168
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1173
    .local v18, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMaxLength:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextChangeFromNative:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotDelete:Z

    .line 1190
    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_2

    add-int/lit8 v3, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    add-int v4, p2, p3

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1193
    .local v19, replaceButOne:Ljava/lang/String;
    add-int v3, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1195
    .local v20, replacedString:Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1197
    add-int p2, p2, p3

    .line 1198
    const/16 p3, 0x0

    .line 1199
    const/16 p4, 0x1

    .line 1202
    .end local v19           #replaceButOne:Ljava/lang/String;
    .end local v20           #replacedString:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    .line 1206
    const/4 v14, 0x0

    .line 1207
    .local v14, events:[Landroid/view/KeyEvent;
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 1208
    add-int v3, p2, p4

    add-int/lit8 v3, v3, -0x1

    add-int v4, p2, p4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mCharacter:[C

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1209
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v16

    .line 1210
    .local v16, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mCharacter:[C

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v14

    .line 1212
    .end local v16           #kmap:Landroid/view/KeyCharacterMap;
    :cond_3
    if-eqz v14, :cond_6

    const/16 v22, 0x1

    .line 1213
    .local v22, useKeyEvents:Z
    :goto_1
    if-eqz v22, :cond_7

    .line 1217
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextChanged start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start + before="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInSetTextAndKeepSelection:Z

    if-nez v3, :cond_4

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    add-int v4, p2, p3

    move/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebViewClassic;->setSelection(II)V

    .line 1225
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1226
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v21

    .line 1228
    .local v21, sp:Landroid/text/Spannable;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 1229
    .local v6, candStart:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 1230
    .local v7, candEnd:I
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1233
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v6           #candStart:I
    .end local v7           #candEnd:I
    .end local v21           #sp:Landroid/text/Spannable;
    :cond_4
    array-length v0, v14

    move/from16 v17, v0

    .line 1234
    .local v17, length:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 1237
    aget-object v3, v14, v15

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1238
    aget-object v3, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebViewClassic$WebViewEditText;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 1234
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1212
    .end local v15           #i:I
    .end local v17           #length:I
    .end local v22           #useKeyEvents:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_1

    .line 1242
    .restart local v22       #useKeyEvents:Z
    :cond_7
    add-int v3, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1244
    .local v11, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    add-int v10, p2, p3

    add-int v12, p2, p4

    add-int v13, p2, p4

    move/from16 v9, p2

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$302(Landroid/webkit/WebViewClassic;Z)Z

    .line 863
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 988
    :goto_0
    const/4 v13, 0x1

    :goto_1
    return v13

    .line 865
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragStartX:F

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragStartY:F

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragStartTime:J

    .line 871
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    .line 872
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mScrolled:Z

    .line 873
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotTouchDown:Z

    .line 874
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHasPerformedLongClick:Z

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDownEvent:Landroid/view/MotionEvent;

    .line 876
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollX:I

    .line 877
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollY:I

    goto :goto_0

    .line 880
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHasPerformedLongClick:Z

    if-eqz v13, :cond_1

    .line 881
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotTouchDown:Z

    .line 882
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 883
    const/4 v13, 0x1

    goto :goto_1

    .line 885
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 887
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    .line 888
    .local v11, slop:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 889
    .local v1, buffer:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    .line 890
    .local v6, initialScrollX:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    .line 892
    .local v7, initialScrollY:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollX:I

    sub-int v2, v13, v14

    .line 893
    .local v2, deltaWebViewScrollX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollY:I

    sub-int v3, v13, v14

    .line 894
    .local v3, deltaWebViewScrollY:I
    neg-int v13, v2

    int-to-float v13, v13

    neg-int v14, v3

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 895
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 896
    int-to-float v13, v2

    int-to-float v14, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 897
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 898
    .local v4, dx:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 902
    .local v5, dy:I
    div-int/lit8 v12, v11, 0x2

    .line 904
    .local v12, smallerSlop:I
    if-gtz v4, :cond_2

    if-lez v5, :cond_3

    .line 907
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mScrolled:Z

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->cancelLongPress()V

    .line 909
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 912
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragStartX:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v11

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragStartY:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v11

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    .line 917
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 919
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 921
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    if-nez v13, :cond_5

    .line 924
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 925
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDownEvent:Landroid/view/MotionEvent;

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventX()I

    move-result v14

    int-to-float v14, v14

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventY()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 927
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 928
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    .line 929
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 934
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventX()I

    move-result v8

    .line 935
    .local v8, offsetX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventY()I

    move-result v9

    .line 936
    .local v9, offsetY:I
    int-to-float v13, v8

    int-to-float v14, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 937
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 938
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 939
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 940
    .local v10, scrolled:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 941
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 942
    neg-int v13, v8

    int-to-float v13, v13

    neg-int v14, v9

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 943
    if-eqz v10, :cond_6

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->cancelLongPress()V

    .line 946
    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 948
    .end local v8           #offsetX:I
    .end local v9           #offsetY:I
    .end local v10           #scrolled:Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 951
    .end local v1           #buffer:Landroid/text/Spannable;
    .end local v2           #deltaWebViewScrollX:I
    .end local v3           #deltaWebViewScrollY:I
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #initialScrollX:I
    .end local v7           #initialScrollY:I
    .end local v11           #slop:I
    .end local v12           #smallerSlop:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollX:I

    sub-int v2, v13, v14

    .line 952
    .restart local v2       #deltaWebViewScrollX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInitWebViewScrollY:I

    sub-int v3, v13, v14

    .line 953
    .restart local v3       #deltaWebViewScrollY:I
    neg-int v13, v2

    int-to-float v13, v13

    neg-int v14, v3

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 954
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 955
    int-to-float v13, v2

    int-to-float v14, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 957
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHasPerformedLongClick:Z

    if-eqz v13, :cond_8

    .line 958
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotTouchDown:Z

    .line 959
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 961
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    if-eqz v13, :cond_9

    .line 964
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->cancelLongPress()V

    .line 965
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotTouchDown:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 967
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventX()I

    move-result v8

    .line 968
    .restart local v8       #offsetX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->offsetEventY()I

    move-result v9

    .line 969
    .restart local v9       #offsetY:I
    int-to-float v13, v8

    int-to-float v14, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 970
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 971
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 972
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewInputDispatcher;->setSkipWebKit(Z)V

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mEventFromEditText:Z

    .line 975
    neg-int v13, v8

    int-to-float v13, v13

    neg-int v14, v9

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 979
    .end local v8           #offsetX:I
    .end local v9           #offsetY:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    if-eqz v13, :cond_a

    .line 982
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mGotTouchDown:Z

    .line 983
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$WebViewEditText;->mDragSent:Z

    goto/16 :goto_0

    .line 863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1278
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHasPerformedLongClick:Z

    .line 1280
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$WebViewEditText;->setCursorVisible(Z)V

    .line 1281
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1282
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1285
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v1

    return v1
.end method

.method remove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 997
    const-string v2, "WebEditText"

    const-string/jumbo v3, "remove text view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    iput-boolean v4, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 999
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1000
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1003
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInsideRemove:Z

    .line 1004
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->hasFocus()Z

    move-result v1

    .line 1005
    .local v1, isFocused:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 1006
    if-eqz v1, :cond_1

    .line 1007
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1009
    :cond_1
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInsideRemove:Z

    .line 1010
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1015
    const/4 v0, 0x1

    return v0
.end method

.method public setMagnifierVisibleEnable(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1299
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mMagnifierVisible:Z

    .line 1300
    return-void
.end method

.method setNodePointer(I)V
    .locals 1
    .parameter "ptr"

    .prologue
    .line 1307
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mNodePointer:I

    if-eq p1, v0, :cond_0

    .line 1308
    iput p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mNodePointer:I

    .line 1310
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1105
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    add-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1108
    return-void
.end method

.method setRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 1040
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1041
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    sub-int/2addr p1, v2

    .line 1042
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    sub-int/2addr p2, v2

    .line 1043
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 1044
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    .line 1045
    const/4 v1, 0x0

    .line 1046
    .local v1, needUpdate:Z
    if-nez v0, :cond_2

    .line 1047
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1048
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v1, 0x1

    .line 1059
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1061
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    :cond_1
    :goto_1
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWidthSpec:I

    .line 1067
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mHeightSpec:I

    .line 1068
    return-void

    .line 1050
    :cond_2
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_3

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, p3, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p4, :cond_0

    .line 1052
    :cond_3
    const/4 v1, 0x1

    .line 1053
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1054
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1055
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1056
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1062
    :cond_4
    if-eqz v1, :cond_1

    .line 1063
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setTextAndKeepSelection(Ljava/lang/String;II)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x0

    .line 1083
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1084
    .local v0, edit:Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mPreChange:Ljava/lang/String;

    .line 1085
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1086
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1087
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1089
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1101
    :goto_0
    return-void

    .line 1092
    :cond_1
    move v4, p2

    .line 1093
    .local v4, selStart:I
    move v3, p3

    .line 1094
    .local v3, selEnd:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInSetTextAndKeepSelection:Z

    .line 1095
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1096
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1097
    .local v2, newLength:I
    if-le v4, v2, :cond_2

    move v4, v2

    .line 1098
    :cond_2
    if-le v3, v2, :cond_3

    move v3, v2

    .line 1099
    :cond_3
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1100
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mInSetTextAndKeepSelection:Z

    goto :goto_0
.end method

.method updateTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewEditText;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebViewClassic$WebViewEditText;->setTextSize(IF)V

    .line 1073
    return-void
.end method
