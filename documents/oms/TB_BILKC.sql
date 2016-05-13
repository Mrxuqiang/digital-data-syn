/*
================================================================================
��ṹ����:TB_BILKC
��ṹ����:�ս�Ԥ���˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILKC;
drop index AK_TB_BILKC;
drop table TB_BILKC;
create table TB_BILKC  (
   BILKC_ID             INTEGER                         not null,  /*�ս�Ԥ���˿��ID         */
   BILKC001             DATE                            not null,  /*�ս�����                   */
   BILKC002             INTEGER,                                   /*Ӫ����֯ID                 */
   BILKC003             INTEGER,                                   /*���˵�ID                   */
   BILKC004             INTEGER,                                   /*���۵�ID                   */ 
   BILKC005             INTEGER,                                   /*�˿ID                   */
   BILKC006             INTEGER,                                   /*�˿��ϸID               */
   BILKC007             INTEGER,                                   /*��Ŀ���                   */
   BILKC008             DATE                            not null,  /*�˿�����                   */
   BILKC009             INTEGER                         not null,  /*�ͻ�                       */
   BILKC010             INTEGER                         not null,  /*�տ�ͻ�                   */
   BILKC011             INTEGER,                                   /*����                       */
   BILKC012             INTEGER,                                   /*��Ա                       */
   BILKC013             INTEGER                         not null,  /*�˿ʽ                   */
   BILKC014             VARCHAR2(30),                              /*ˢ������                   */
   BILKC015             NUMBER(18,3),                              /*�˿���                   */
   BILKC016             NUMBER(18,3),                              /*��������                   */
   BILKC017             NUMBER(18,3),                              /*������                     */   
   BILKC018             VARCHAR2(255),                             /*��ע                       */   
   BILKC019             VARCHAR2(30),                              /*Ԥ���˿��                 */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����               */                               
   CREATE_DATE          DATE,                                      /*��������                   */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                   */
   MODI_DATE            DATE,                                      /*�޸�����                   */
   FLAG                 NUMBER(1),                                 /*����״̬                   */
   constraint PK_TB_BILKC primary key (BILKC_ID)
);
create sequence SEQ_TB_BILKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKC to public;
grant index  on TB_BILKC to public;
grant update on TB_BILKC to public; 
grant delete on TB_BILKC to public;  
grant insert on TB_BILKC to public; 
grant select on SEQ_TB_BILKC to public;   