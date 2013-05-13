.class public Lcom/meizu/preference/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEmptyAllow:Z

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 251
    iput-boolean v3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    .line 261
    new-instance v1, Lcom/meizu/preference/EditPhoneNumberPreference$1;

    invoke-direct {v1, p0}, Lcom/meizu/preference/EditPhoneNumberPreference$1;-><init>(Lcom/meizu/preference/EditPhoneNumberPreference;)V

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->watcher:Landroid/text/TextWatcher;

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 126
    const v1, 0x10900a8

    invoke-virtual {p0, v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    sget-object v1, Lcom/android/internal/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x10302f6

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 139
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 140
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/preference/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/preference/EditPhoneNumberPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_1
    return-object v0

    .line 571
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEmptyAllow()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    return v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 309
    const v1, 0x1020392

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 313
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 314
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 317
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 196
    const/4 v2, -0x2

    iput v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mButtonClicked:I

    .line 198
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 206
    .local v1, editText:Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 209
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v2, p0}, Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/meizu/preference/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, defaultNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 212
    iput-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 215
    .end local v0           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 220
    :cond_1
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 221
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 222
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 163
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 169
    iget v3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 170
    iget-boolean v3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v2, 0x0

    .line 186
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 183
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 389
    iget v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v0, :cond_0

    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setToggled(Z)Lcom/meizu/preference/EditPhoneNumberPreference;

    .line 394
    :cond_0
    iput p2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mButtonClicked:I

    .line 395
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 396
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 403
    iget v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/preference/EditPhoneNumberPreference;

    .line 406
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/meizu/preference/EditPhoneNumberPreference;I)V

    .line 416
    :cond_1
    return-void

    .line 409
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .parameter "pickedValue"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 380
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 325
    iget v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    iget-boolean v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 469
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/preference/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 471
    return-void

    .line 469
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 503
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/meizu/preference/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 357
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 352
    return-void
.end method

.method public setEmptyAllow(Z)V
    .locals 0
    .parameter "mEmptyAllow"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEmptyAllow:Z

    .line 259
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 362
    iput p2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPrefId:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 364
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 370
    iput p2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPrefId:I

    .line 371
    iput-object p3, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/meizu/preference/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 372
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 459
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/meizu/preference/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 537
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 540
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/meizu/preference/EditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 513
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 516
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcom/meizu/preference/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mChecked:Z

    .line 431
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->notifyChanged()V

    .line 434
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 560
    iget v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v1, v3, :cond_0

    .line 561
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->setToggled(Z)Lcom/meizu/preference/EditPhoneNumberPreference;

    .line 563
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/meizu/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/preference/EditPhoneNumberPreference;

    .line 566
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/preference/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/meizu/preference/EditPhoneNumberPreference;

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, shouldDisable:Z
    iget v4, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 487
    iget-object v2, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 492
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 242
    iget-object v0, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->isEmptyAllow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/meizu/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iget v1, p0, Lcom/meizu/preference/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, -0x3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 583
    return-void
.end method
