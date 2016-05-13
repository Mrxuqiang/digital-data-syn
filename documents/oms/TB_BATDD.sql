/*
================================================================================
��ṹ����:TB_BATDD
��ṹ����:̨�˱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BATDD;                       
drop index AK_TB_BATDD;                       
drop table TB_BATDD;                       
create table TB_BATDD  (                       
   BATDD_ID	            INTEGER	        not null,	            /* ̨�˱�ID       */
   BATDD001	            INTEGER	        not null,	            /* ��������       */
   BATDD002	            INTEGER	        not null,	            /* ����ID         */
   BATDD003	            INTEGER	        not null,	            /* ��ϸID         */
   BATDD004	            INTEGER	        not null,	            /* ��ʾ��������   */
   BATDD005	            INTEGER	        not null,	            /* ��ʾ����ID     */
   BATDD006	            INTEGER	        not null,	            /* ��ʾ��ϸID     */
   BATDD007	            INTEGER	        not null,	            /* �ֿ�ID         */
   BATDD008	            INTEGER	        not null,	            /* ��ƷID         */
   BATDD009	            INTEGER,		                            /* ά��1ID        */      
   BATDD010	            INTEGER,		                            /* ά��2ID        */      
   BATDD011	            INTEGER,		                            /* ά��3ID        */      
   BATDD012	            INTEGER,		                            /* ά��4ID        */      
   BATDD013	            INTEGER,		                            /* ά��5ID        */      
   BATDD014	            NUMBER(28,3)	 not null,             	    /* ����           */
   BATDD015	            NUMBER(28,3)         not null,             	    /* ����           */
   BATDD016	            NUMBER(28,3)	 not null,             	    /* ���۽��       */
   BATDD017	            NUMBER(28,3)	 not null,             	    /* �����         */
   BATDD018	            NUMBER(28,3)	 not null,             	    /* ������       */
   BATDD019	            NUMBER(28,3)	 not null,             	    /* ë��           */
   BATDD020	            INTEGER	         not null,	            /* ����           */  --1.��� -1.����
   BATDD021	            INTEGER	         not null,	            /* �׼�����ID     */ --20121017 add by xiechun
   CREATE_USER          VARCHAR2(12),                         /* ������Ա       */
   USER_GROUP           VARCHAR2(12),                         /* ������Ա����   */                               
   CREATE_DATE          DATE,                                 /* ��������       */
   MODIFIER             VARCHAR2(12),                         /* �޸���Ա       */
   MODI_DATE            DATE,                                 /* �޸�����       */
   FLAG                 NUMBER(1),                            /* ����״̬       */
   constraint PK_TB_BATDD primary key (BATDD_ID)
);
--create unique index AK_TB_BATDD on TB_BATDD (BATDD_ID);
create sequence SEQ_TB_BATDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDD to public;
grant index  on TB_BATDD to public;
grant update on TB_BATDD to public; 
grant delete on TB_BATDD to public;  
grant insert on TB_BATDD to public; 
grant select on SEQ_TB_BATDD to public; 