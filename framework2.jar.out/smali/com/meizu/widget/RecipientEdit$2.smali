.class Lcom/meizu/widget/RecipientEdit$2;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 873
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->isDefaultInputMethod()Z
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1500(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v0, v1, -0x100

    .line 875
    .local v0, imeOptions:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v4, :cond_3

    .line 877
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    or-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 879
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 884
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 895
    .end local v0           #imeOptions:I
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnRecipientChangedListener:Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1700(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;->OnRecipientChanged()V

    .line 898
    :cond_1
    return-void

    .line 881
    .restart local v0       #imeOptions:I
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    or-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 882
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->getImeOptions()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeOptions(I)V

    .line 888
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040577

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 891
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->access$1600(Lcom/meizu/widget/RecipientEdit;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v3, 0x1

    .line 848
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$400(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 850
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/meizu/widget/RecipientEdit$RecipientHandler;->removeMessages(ILjava/lang/Object;)V

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$600(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mSipVersion:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$800(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 856
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1000(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshSipDestState()V
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1100(Lcom/meizu/widget/RecipientEdit;)V

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->endCheck()V
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1200(Lcom/meizu/widget/RecipientEdit;)V

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 867
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    const/4 v2, 0x0

    #setter for: Lcom/meizu/widget/RecipientEdit;->mViewSelected:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/meizu/widget/RecipientEdit;->access$1302(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)Landroid/view/View;

    .line 868
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;->setCursorVisible(Z)V

    .line 870
    :cond_3
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$200(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnTextChangedListener:Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;
    invoke-static {v0}, Lcom/meizu/widget/RecipientEdit;->access$200(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 844
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$2;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$300(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/widget/RecipientEdit;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 845
    return-void
.end method
