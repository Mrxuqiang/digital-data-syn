/*      
================================================================================
��ṹ����:TB_PAYAH
��ṹ����:Ԥ���ջ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAH;
drop index AK_TB_PAYAH;
drop table TB_PAYAH;
create table TB_PAYAH  (
   PAYAH_ID             INTEGER                         not null,  /*�ջ�����ID    */
   PAYAH001             INTEGER                         not null,  /*����ID          */
   PAYAH002             VARCHAR2(30)                    not null,  /*�ջص���      */
   PAYAH003             DATE                            not null,  /*�ջ�����      */
   PAYAH004             INTEGER                         not null,  /*��Ӧ��ID        */
   PAYAH005             INTEGER                         not null,  /*�˿Ӧ��ID    */ 
   PAYAH006             INTEGER                         not null,   /*����          */ 
   PAYAH007             NUMBER(16,4),                               /*����          */ 
   PAYAH008             INTEGER,                                   /*����          */
   PAYAH009             INTEGER,                                   /*��Ա          */ 
   PAYAH010             VARCHAR2(1)                     not null,  /*����״̬      */ 
   PAYAH011             VARCHAR2(1)                     not null,  /*����״̬      */ 
   PAYAH012             VARCHAR2(1)                     not null,  /*����ƾ֤      */ 
   PAYAH013             NUMBER(16,2),                              /*ԭ���ջؽ��  */ 
   PAYAH014             NUMBER(16,2),                              /*�����ջؽ��  */ 
   PAYAH015             NUMBER(16,2),                              /*ԭ�Һ������  */ 
   PAYAH016             NUMBER(16,2),                              /*���Һ������  */
   PAYAH017             INTEGER,                                   /*¼����        */  
   PAYAH018             DATE,                                      /*¼������      */ 
   PAYAH019             INTEGER,                                   /*�����        */ 
   PAYAH020             DATE,                                      /*�������      */    
   PAYAH021             NUMBER(4),                                 /*������      */    
   PAYAH022             NUMBER(2),                                 /*����ڼ�      */     
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAH primary key (PAYAH_ID)
);
create unique index AK_TB_PAYAH on TB_PAYAH (PAYAH001,PAYAH002);
create sequence SEQ_TB_PAYAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAH to public;
grant index  on TB_PAYAH to public;
grant update on TB_PAYAH to public; 
grant delete on TB_PAYAH to public;  
grant insert on TB_PAYAH to public; 
grant select on SEQ_TB_PAYAH to public;   