/*
================================================================================
��ṹ����:TB_BILAJ
��ṹ����:�����˿����뵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILAJ;
drop index AK_TB_BILAJ;
drop table TB_BILAJ;
create table TB_BILAJ  (
   BILAJ_ID             INTEGER                         not null,  /*�����˿����뵥��ID   */
   BILAJ001             INTEGER                         not null,  /*�����˿����뵥��ID   */
   BILAJ002             VARCHAR2(1)                     not null,  /*��Դ                 */   
   BILAJ003             VARCHAR2(30),                               /*��Դ����             */  
   BILAJ004             INTEGER,                                   /*��Դ����ID           */  
   BILAJ005             INTEGER,                                   /*��Դ����ID           */         
   BILAJ006             INTEGER,                                   /*����ID               */
   BILAJ007             NUMBER(12,2),                              /*�����տ���         */
   BILAJ008             NUMBER(12,2),                              /*�˿�������         */
   BILAJ009             DATE,                                      /*��������             */
   BILAJ010             DATE,                                      /*����ֹ��             */
   BILAJ011             VARCHAR2(255),                             /*��ע                 */
   BILAJ012             VARCHAR2(255),                             /*���λ             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                    /*����״̬             */
   constraint PK_TB_BILAJ primary key (BILAJ_ID)
);
create sequence SEQ_TB_BILAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAJ to public;
grant index  on TB_BILAJ to public;
grant update on TB_BILAJ to public; 
grant delete on TB_BILAJ to public;  
grant insert on TB_BILAJ to public; 
grant select on SEQ_TB_BILAJ to public;   