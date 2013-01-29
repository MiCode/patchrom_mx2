.class Lcom/android/camera/OtherMenuAdapter$1;
.super Ljava/lang/Object;
.source "OtherMenuAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OtherMenuAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OtherMenuAdapter;

.field final synthetic val$t2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/camera/OtherMenuAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/OtherMenuAdapter$1;->this$0:Lcom/android/camera/OtherMenuAdapter;

    iput-object p2, p0, Lcom/android/camera/OtherMenuAdapter$1;->val$t2:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 171
    if-nez p2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter$1;->val$t2:Landroid/widget/TextView;

    const-string v1, "1M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter$1;->val$t2:Landroid/widget/TextView;

    const-string v1, "3M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter$1;->val$t2:Landroid/widget/TextView;

    const-string v1, "5M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter$1;->val$t2:Landroid/widget/TextView;

    const-string v1, "8M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 166
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/camera/OtherMenuAdapter$1;->this$0:Lcom/android/camera/OtherMenuAdapter;

    #getter for: Lcom/android/camera/OtherMenuAdapter;->mListener:Lcom/android/camera/OtherMenuAdapter$Listener;
    invoke-static {v1}, Lcom/android/camera/OtherMenuAdapter;->access$000(Lcom/android/camera/OtherMenuAdapter;)Lcom/android/camera/OtherMenuAdapter$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const-string v0, "1280x960"

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OtherMenuAdapter$1;->this$0:Lcom/android/camera/OtherMenuAdapter;

    #getter for: Lcom/android/camera/OtherMenuAdapter;->mListener:Lcom/android/camera/OtherMenuAdapter$Listener;
    invoke-static {v1}, Lcom/android/camera/OtherMenuAdapter;->access$000(Lcom/android/camera/OtherMenuAdapter;)Lcom/android/camera/OtherMenuAdapter$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/OtherMenuAdapter$Listener;->setPicSize(Ljava/lang/String;)V

    .line 161
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    return-void

    .line 152
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 153
    const-string v0, "2048x1536"

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 155
    const-string v0, "2560x1920"

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 157
    const-string v0, "3264x2448"

    goto :goto_0
.end method
