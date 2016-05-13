/*
================================================================================
��ṹ����:TB_GRTDA
��ṹ����:ָ�����ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTDA;
drop table TB_GRTDA;
create table TB_GRTDA  (
   GRTDA_ID             INTEGER                            NOT NULL,   /*ָ������ID               */   
   GRTDA001             VARCHAR2(20),                                  /*������                 */   
   GRTDA002             VARCHAR2(20),                                  /*ָ��ID                   */   
   GRTDA003             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA004             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA005             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA006             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA007             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA008             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA009             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA010             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA011             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA012             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA013             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA014             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA015             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA016             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA017             VARCHAR2(64),                                  /*�ؼ�������               */
   GRTDA018             NUMBER(16,2),                                  /*���                     */
   GRTDA019             VARCHAR2(1),                                   /*��������                 */   
   CREATE_USER          VARCHAR2(12),                                  /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����             */                               
   CREATE_DATE          DATE,                                          /*��������                 */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա                 */
   MODI_DATE            DATE,                                          /*�޸�����                 */
   FLAG                 NUMBER(1),                                     /*����״̬                 */  
   constraint PK_TB_GRTDA primary key (GRTDA_ID)
);
create sequence SEQ_TB_GRTDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTDA to public;
grant index  on TB_GRTDA to public;
grant update on TB_GRTDA to public; 
grant delete on TB_GRTDA to public;  
grant insert on TB_GRTDA to public; 
grant select on SEQ_TB_GRTDA to public; 