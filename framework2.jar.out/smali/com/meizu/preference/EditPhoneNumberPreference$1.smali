.class Lcom/meizu/preference/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/preference/EditPhoneNumberPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/preference/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/meizu/preference/EditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/preference/EditPhoneNumberPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableButton(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, -0x1

    .line 282
    iget-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/preference/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 283
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/preference/EditPhoneNumberPreference;

    #getter for: Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I
    invoke-static {v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->access$000(Lcom/meizu/preference/EditPhoneNumberPreference;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 285
    iget-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/preference/EditPhoneNumberPreference;

    #getter for: Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z
    invoke-static {v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->access$100(Lcom/meizu/preference/EditPhoneNumberPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 265
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 270
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 275
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/preference/EditPhoneNumberPreference;

    invoke-virtual {v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isEmptyAllow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference$1;->enableButton(Z)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference$1;->enableButton(Z)V

    goto :goto_0
.end method
