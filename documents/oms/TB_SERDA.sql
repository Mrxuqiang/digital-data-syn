/*
================================================================================
��ṹ����:TB_SERDA
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERDA;
drop index AK_TB_SERDA;
drop table TB_SERDA;
create table TB_SERDA  (
   SERDA_ID             INTEGER               not null,              /*����ID             */
   SERDA001             INTEGER               not null,              /*���񵥱�             */
   SERDA002             VARCHAR2(30)          not null,              /*���񵥺�             */
   SERDA003             VARCHAR2(1)           not null,              /*��Դ��������         */--"1.���۵�  2.�����˻���
   SERDA004             VARCHAR2(30)          not null,              /*��Դ����             */
   SERDA005             DATE                  not null,              /*��������             */
   SERDA006             INTEGER,                                     /*�������             */
   SERDA007             INTEGER,                                     /*˾��                 */
   SERDA008             VARCHAR2(30)              null,              /*�ֻ���1              */
   SERDA009             VARCHAR2(30)              null,              /*�ֻ���2              */
   SERDA010             VARCHAR2(30),                                /*�˿�����             */
   SERDA011             VARCHAR2(255),                               /*�ͻ���ַ             */
   SERDA012             VARCHAR2(255),                               /*��ϵ��ʽ             */
   SERDA013             DATE,                                        /*Ҫ�������           */
   SERDA014             DATE,                                        /*ʵ�������           */
   SERDA015             INTEGER               not null,              /*Ӫ����֯             */
   SERDA016             VARCHAR2(1),                                 /*���״̬             */
   SERDA017             INTEGER,                                     /*¼����Ա             */
   SERDA018             DATE,                                        /*¼������             */
   SERDA019             INTEGER,                                     /*�����Ա             */
   SERDA020             DATE,                                        /*�������             */
   SERDA021             VARCHAR2(255),                               /*��װҪ��             */    
   SERDA022             VARCHAR2(2000),                              /*�طü�¼             */--20110924 modify by xiechun �طü�¼
   SERDA023             VARCHAR2(1)          not null,               /*��װ����             */
   SERDA024             VARCHAR2(1)          not null,               /*Ա�����ʼ�����̬��   */   
   SERDA025             INTEGER              nou null,               /*��Դ��ID             */--�ų����ӱ�ͻ�Э��ID
   SERDA026             VARCHAR2(1)          not null,               /*�Ƿ�װ�ط�         */             
   SERDA027             INTEGER,                                     /*�ų���ID             */ 
   SERDA028             INTEGER,                                     /*��Դ�ŵ�             */
   SERDA029             INTEGER,                                     /*¥��                 */
   SERDA030             VARCHAR2(1)         not null               , /*�Ƿ���¥��           */
   SERDA031             VARCHAR2(1)         not null               , /*����                 */
   SERDA032             VARCHAR2(1)         not null              ,  /*��װ                 */
   SERDA033             VARCHAR2(1)         not null                ,/*��װ                 */
   SERDA034             VARCHAR2(1)         not null                ,/*���                 */
   SERDA035             VARCHAR2(1)         not null                ,/*��������             */--1.��װ 2.����
   SERDA036             INTEGER                                     ,/*��װ��               */
   SERDA037             VARCHAR2(255),                               /*��ע                 */
   SERDA038             VARCHAR1(1),                                 /*�᰸״̬             */--N.δ�᰸ Y.�᰸ 20120224 add by xiechun
   CREATE_USER          VARCHAR2(12),                                /*������Ա             */
   USER_GROUP           VARCHAR2(12),                                /*������Ա����         */                               
   CREATE_DATE          DATE,                                        /*��������             */
   MODIFIER             VARCHAR2(12),                                /*�޸���Ա             */
   MODI_DATE            DATE,                                        /*�޸�����             */
   FLAG                 NUMBER(1),                                   /*����״̬             */
   constraint PK_TB_SERDA primary key (SERDA_ID)
);
create unique index AK_TB_SERDA on TB_SERDA (SERDA001,SERDA002,SERDA015);
create sequence SEQ_TB_SERDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDA to public;
grant index  on TB_SERDA to public;
grant update on TB_SERDA to public; 
grant delete on TB_SERDA to public;  
grant insert on TB_SERDA to public; 
grant select on SEQ_TB_SERDA to public;   