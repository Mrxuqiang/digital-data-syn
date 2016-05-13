/*
================================================================================
��ṹ����:TB_INVOA
��ṹ����:�����;��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVOA;
drop index AK_TB_INVOA;
drop table TB_INVOA;
create table TB_INVOA  (
   INVOA_ID             INTEGER                         not null,  /*�����;ID		     */
   INVOA001             INTEGER                         not null,  /*��Դ������			 */
   INVOA002             INTEGER                         not null,  /*��Դ��ID		     */
   INVOA003             INTEGER                         not null,  /*��Դ�׼���ϸID		 */
   INVOA004             INTEGER                         not null,  /*��Դ�Ӽ���ϸID		 */
   INVOA005             INTEGER                         not null,  /*�׼���ƷID  	     */
   INVOA006             INTEGER,                                   /*�׼�ά��1  	     */
   INVOA007             INTEGER,                                   /*�׼�ά��2  	     */
   INVOA008             INTEGER,                                   /*�׼�ά��3  	     */
   INVOA009             INTEGER,                                   /*�׼�ά��4  	     */
   INVOA010             INTEGER,                                   /*�׼�ά��5  	     */
   INVOA011             INTEGER                         not null,  /*�Ӽ���ƷID  	     */
   INVOA012             INTEGER,                                   /*�Ӽ�ά��1  	     */
   INVOA013             INTEGER,                                   /*�Ӽ�ά��2  	     */
   INVOA014             INTEGER,                                   /*�Ӽ�ά��3  	     */
   INVOA015             INTEGER,                                   /*�Ӽ�ά��4  	     */
   INVOA016             INTEGER,                                   /*�Ӽ�ά��5  	     */
   INVOA017             NUMBER(18,3)                    not null,  /*����   		     */
   INVOA018             INTEGER                         not null,  /*���䵥����			 */
   INVOA019             INTEGER                         not null,  /*���䵥ID		     */
   INVOA020             INTEGER                         not null,  /*�����׼���ϸID		 */
   INVOA021             INTEGER                         not null,  /*�����Ӽ���ϸID		 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_INVOA primary key (INVOA_ID)
);

create sequence SEQ_TB_INVOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVOA to public;
grant index  on TB_INVOA to public;
grant update on TB_INVOA to public; 
grant delete on TB_INVOA to public;  
grant insert on TB_INVOA to public; 
grant select on SEQ_TB_INVOA to public;   
